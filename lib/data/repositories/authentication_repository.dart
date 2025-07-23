import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_commerce/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../features/authentication/screens/login/login.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final localStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    // Remove the splash screen
    FlutterNativeSplash.remove();

    // Redirect to the right screen
    screenRedirect();
  }

  /// Function to redirect to the right screen
  void screenRedirect() {
    // write isFirstTime If Null
    localStorage.writeIfNull('isFirstTime', true);

    // Check if user is first time
    localStorage.read('isFirstTime') != true
        ? Get.to(() => LoginScreen()) // If not first time, go to login screen
        : Get.to(() => OnboardingScreen()); // if first time, go to onboarding screen
  }
  
  
  
  /// [Authentication]  - With Email & Password
  Future<UserCredential> registerUser(String email, String password) async{
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch(e){
      throw UFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw UFirebaseException(e.code).message;
    } on FormatException catch(e){
      throw UFormatException();
    } on PlatformException catch(e){
      throw UPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong. Please try again';
    }
  }

  /// [EmailVerification] - Send Mail
  Future<void> sendEmailVerification() async{
    try{
     await _auth.currentUser?.sendEmailVerification();

    } on FirebaseAuthException catch(e){
      throw UFirebaseAuthException(e.code).message;
    } on FirebaseException catch(e){
      throw UFirebaseException(e.code).message;
    } on FormatException catch(e){
      throw UFormatException();
    } on PlatformException catch(e){
      throw UPlatformException(e.code).message;
    } catch(e){
      throw 'Something went wrong. Please try again';
    }
  }

}