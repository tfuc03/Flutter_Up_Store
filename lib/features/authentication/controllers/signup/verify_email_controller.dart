import 'dart:async';

import 'package:e_commerce/common/widgets/screens/success_screen.dart';
import 'package:e_commerce/data/repositories/authentication_repository.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/popups/snackbar_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();

 @override
  void onInit(){
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  //var

  ///Snd email verification link
  Future<void> sendEmailVerification() async {
    try{
      await AuthenticationRepository.instance.sendEmailVerification();
      USnackBarHelpers.successSnackBar(title: 'Đã gửi email', message: 'Vui lòng kiểm tra email của bạn!');    
    }catch(e){
      USnackBarHelpers.errorSnackBar(title: 'Đã có lỗi xảy ra', message: e.toString());
    }
  }


  ///Timer to automatically redirect on Email Verification
  void setTimerForAutoRedirect(){
    Timer.periodic(Duration(seconds: 1), (timer) async{
     await FirebaseAuth.instance.currentUser!.reload();
     final user = FirebaseAuth.instance.currentUser;
     if(user?.emailVerified ?? false){
      timer.cancel();
      Get.off(() => SuccessScreen(
        title: UTexts.accountCreatedTitle, 
        subTitle: UTexts.accountCreatedSubTitle, 
        image: UImages.successfulPaymentIcon, 
        onTap: () => AuthenticationRepository.instance.screenRedirect(),
        ));
     }
    });
  }
}