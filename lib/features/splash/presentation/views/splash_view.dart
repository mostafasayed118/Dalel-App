import 'package:dalel_app/core/functions/navigation.dart';
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
    super.initState();
    delayedNavigate(context);
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
) {
  Future.delayed(const Duration(seconds: 2), () {
    customNavigatePushReplacement(context, "/onboarding");
  });
}
