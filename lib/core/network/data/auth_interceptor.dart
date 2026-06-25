import 'dart:async';
import 'package:dio/dio.dart';
import 'package:aqarati_app/core/network/domain/token_manager.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.tokenManager,
    required this.baseUrl,
  });

  final TokenManager tokenManager;
  final String baseUrl;

  bool _isRefreshing = false;
  Completer<void>? _refreshCompleter;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await tokenManager.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (_shouldRefresh(err)) {
      final response = await _handleRefresh(err);
      if (response != null) {
        return handler.resolve(response);
      }
    }

    handler.next(err);
  }

  bool _shouldRefresh(DioException err) {
    return err.response?.statusCode == 401 &&
        err.requestOptions.extra['retry'] != true;
  }

  Future<Response?> _handleRefresh(DioException err) async {
    final requestOptions = err.requestOptions;

    if (!_isRefreshing) {
      _isRefreshing = true;
      _refreshCompleter = Completer();

      final success = await _refreshToken();

      _isRefreshing = false;
      _refreshCompleter?.complete();

      if (!success) {
        await tokenManager.clearTokens();
        // You might want to handle log out events here.
        return null;
      }
    } else {
      await _refreshCompleter?.future;
    }

    final newToken = await tokenManager.getAccessToken();
    if (newToken == null) return null;

    requestOptions.headers['Authorization'] = 'Bearer $newToken';
    requestOptions.extra['retry'] = true;

    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    return dio.fetch(requestOptions);
  }

  Future<bool> _refreshToken() async {
    try {
      final refreshToken = await tokenManager.getRefreshToken();
      if (refreshToken == null) return false;

      final dio = Dio(BaseOptions(baseUrl: baseUrl));

      final response = await dio.post(
        '/auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      final newAccess = response.data['accessToken'];
      final newRefresh = response.data['refreshToken'];

      await tokenManager.saveTokens(
        accessToken: newAccess,
        refreshToken: newRefresh,
      );

      return true;
    } catch (_) {
      return false;
    }
  }
}
