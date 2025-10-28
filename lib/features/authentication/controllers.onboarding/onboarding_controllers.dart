import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/features/authentication/screens/login/login.dart';

class OnBoardingControllers extends GetxController {
  // Singleton instance
  static OnBoardingControllers get to => Get.find();

  //variables
  final pageController = PageController();
  final currentPage = 0.obs;
  final int numPages = 3;

  // Navigate to OnBoarding Screen
  void goToOnBoardingScreen() {
    Get.to(() => const OnBoardingScreen());
  }

  //Navigate to Home Screen
  void goToHomeScreen() {
    Get.to(() => const LoginScreen());
    //Implement navigation to home screen
  }

  // Update current state when Page scrolls
  void onPageChanged(int index) {
    currentPage.value = index;
    update();
  }

  //Jump to the specific dot when clicked
  void jumpToPage(int index) {
    currentPage.value = index;
    pageController.jumpToPage(index);
    update();
  }

  //update current state when skip button is clicked
  void onSkipButtonClicked() {
    if (currentPage.value < numPages - 1) {
      currentPage.value = numPages - 1;
      pageController.jumpToPage(numPages - 1);
    } else {
      //navigate to home screen or login screen
      goToHomeScreen();
    }
  }

  //update current state when next button is clicked
  void onNextButtonClicked() {
    if (currentPage.value < numPages - 1) {
      currentPage.value += 1;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      //navigate to home screen or login screen
      goToHomeScreen();
    }
    update();
  }

  //Update current state and jump to last page when get started button is clicked
  void onGetStartedButtonClicked() {
    update();
  }
}
