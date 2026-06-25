abstract interface class NetworkInfo {
  Future<bool> get isConnected;
  Future<bool> hasInternet();
  Future<bool> isReallyConnected();
}
