import 'package:dalel_app/core/database/cache_helper.dart';
import 'package:dalel_app/core/routers/app_routers.dart';
import 'package:dalel_app/core/services/services_locator.dart';
import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLocator();
  await sl<CacheHelper>().init();
  // sl<CacheHelper>().removeData(key: AppStrings.isOnBoardingVisited);
  runApp(const DalelApp());
}

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      routerConfig: router,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhiteColor),
    );
  }
}
