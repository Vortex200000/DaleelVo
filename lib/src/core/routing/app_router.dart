import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/presntaions/views/Home/Home.dart';
import '../../features/presntaions/views/onboarding/onboarding_layout.dart';
import '../../features/presntaions/views/sign_in/sign_in_layout.dart';
import '../../features/presntaions/views/splash/splash_screen.dart';
import 'routers.dart';

class AppRouter {
  static List<GetPage<dynamic>>? getPages = [
    getPage(Routes.splash, page: () => const SplashScreen()),
    getPage(Routes.onboarding, page: () => const OnboardingLayout()),
    getPage(Routes.signIn, page: () => const SignInLayout()),
    getPage(
      Routes.homeScreen,
      page: () => const HomeScreen(),
    )
  ];
}

GetPage<dynamic> getPage(String name, {required Widget Function() page}) =>
    GetPage(
        name: name,
        page: page,
        curve: Curves.easeInOut,
        transition: Platform.isIOS ? Transition.cupertino : Transition.fadeIn,
        fullscreenDialog: true,
        transitionDuration: const Duration(milliseconds: 1000));

Future<void> get back async => Get.back();

extension RouteParse on String {
  void toPage({dynamic arguments}) => Get.toNamed(this, arguments: arguments);

  void offPage({dynamic arguments}) => Get.offNamed(this, arguments: arguments);
}
