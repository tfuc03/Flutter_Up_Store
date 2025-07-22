import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();


  /// Variables
  final pageController = PageController();
  RxInt currentIndex = 0.obs;
  final storage = GetStorage();

  /// Update current index when page scroll
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  /// Jump to specific dot  selected page
  void dotNavigationClick(index){
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to the next page
  void nextPage(){
    if(currentIndex.value == 2){
      storage.write('isFirstTime', false);
      Get.offAll(() => LoginScreen());
      return;
    }
    currentIndex.value++;
    pageController.jumpToPage(currentIndex.value);
  }

  /// Update current index and jump to the last page
  void skipPage(){
    currentIndex.value = 2;
    pageController.jumpToPage(currentIndex.value);
  }

}