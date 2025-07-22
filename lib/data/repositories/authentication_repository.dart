import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  // final deviceStorage = GetStorage();
  // final _auth = FirebaseAuth.instance;

  // User? get authUser => _auth.currentUser;

  final storage = GetStorage();

  /// Called from main.dart on app launch
  @override
  void onReady() {
    // Remove the splash screen
    FlutterNativeSplash.remove();
    // Redirect to the appropriate screen
    screenRedirect();
  }

void screenRedirect(){
  storage.writeIfNull('isFirstTime', true);

  storage.read('isFirstTime') == true ? Get.to(()=> OnboardingScreen()) : Get.to(() => LoginScreen());
}


//   /// Function to show relevant screen
//   screenRedirect() async{
//     final user = _auth.currentUser;
//     if(user != null){
//       // if user is logged in
//       if(user.emailVerified){

//         // Initialize user specific storage
//         await HkLocalStorage.init(user.uid);
        
//         // if user email is verified , navigate to navigation menu
//         Get.offAll(() => const NavigationMenu());

//       }else{
//         // if user's email is not verified, navigate to the verify email screen
//         Get.offAll(() => VerifyEmailScreen(email: user.email,));
//       }
//     }else{
//       // Local Storage
//       deviceStorage.writeIfNull('IsFistTime', true);

//       deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
//     }


//   }


//   /*---------- Email & Password Sign-in --------------------------------*/

//   /// [Email Authentication] - Sign In
//   Future<UserCredential> loginWithEmailAndPassword(String email, String password) async{
//     try{
//       return await _auth.signInWithEmailAndPassword(email: email, password: password);
//     }on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }

//   /// [EmailAuthentication] - REGISTER
//   Future<UserCredential> registerWithEmailAndPassword(String email, String password) async{
//     try{
//       return await _auth.createUserWithEmailAndPassword(email: email, password: password);
//     } on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }

//   /// [ReAuthenticate] - ReAuthenticate User
//   Future<void> reAuthenticateWithEmailAndPassword(String email, String password) async{
//     try{
//       // Create a credential
//       AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

//       // ReAuthenticate
//       await _auth.currentUser!.reauthenticateWithCredential(credential);

//     }on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }

//   /// [Email Verification] - Mail Verification
//   Future<void> sendEmailVerification() async{
//     try{
//       await _auth.currentUser!.sendEmailVerification();
//     } on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }

//   /// [Email Verification] - Forget Password
//   Future<void> sendPasswordResetEmail(String email) async{
//     try{
//       await _auth.sendPasswordResetEmail(email: email);
//     } on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }


//   /*---------- Federated identity & social Sign-in --------------------------------*/

//   /// [GoogleAuthentication] - GOOGLE
//   Future<UserCredential?> signInWithGoogle() async{
//     try{
//       // Trigger the authentication flow
//       final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

//       // Obtain the authentication details from the request
//       final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;

//       // Create a credential
//       final  OAuthCredential credential = GoogleAuthProvider.credential(
//           accessToken: googleAuth?.accessToken,
//           idToken: googleAuth?.idToken);

//       // Once the signed in, return the user credential
//       return await _auth.signInWithCredential(credential);

//     } on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       if(kDebugMode) print('Something went wrong: $e');
//       return null;
//     }
//   }


//   /// [FacebookAuthentication] - FACEBOOK


// /*---------- ./end Federated identity & social Sign-in --------------------------------*/

//   /// [Logout User] - Valid for any authentication
//   Future<void> logout() async{
//     try{
//       await GoogleSignIn().signOut();
//       await FirebaseAuth.instance.signOut();
//       Get.offAll(()=> const LoginScreen());
//     } on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }

//   /// DELETE USER - Remove user Auth and  Firestore Account
//   Future<void> deleteAccount() async{
//     try{
//       await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid);
//       await _auth.currentUser?.delete();
//     }on FirebaseAuthException catch(e){
//       throw HkFirebaseAuthException(e.code).message;
//     } on FirebaseException catch(e){
//       throw HkFirebaseException(e.code).message;
//     } on FormatException catch(_){
//       throw const HkFormatException();
//     } on PlatformException catch(e){
//       throw HkPlatformException(e.code).message;
//     } catch(e){
//       throw 'Something went wrong. Please try again';
//     }
//   }
}