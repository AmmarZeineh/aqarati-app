import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aqarati_app/core/routing/app_router.dart';
import 'package:aqarati_app/core/theme/app_theme.dart';

class AqaratiApp extends StatelessWidget {
  const AqaratiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // Adjust to your design's base size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Aqarati',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(const Locale('en')), // Update with logic
          darkTheme: AppTheme.dark(const Locale('en')),
          themeMode: ThemeMode.system,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
