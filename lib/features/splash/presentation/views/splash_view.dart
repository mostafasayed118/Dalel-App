import 'package:dalel_app/core/database/cache_helper.dart';
import 'package:dalel_app/core/functions/navigation.dart';
import 'package:dalel_app/core/services/services_locator.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited = sl<CacheHelper>().getData(key: AppStrings.isOnBoardingVisited) ?? false;
    if (isOnBoardingVisited) {
      delayedNavigate(context, "/signup");
    } else {
      delayedNavigate(context, "/onboarding");
    }
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(AppStrings.appName,
              style: CustomTextStyle.pacifico400Style64),
        ),
      ),
    );
  }
}

void delayedNavigate(
  BuildContext context,
  String path,
) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigatePushReplacement(context, path);
  });
}
