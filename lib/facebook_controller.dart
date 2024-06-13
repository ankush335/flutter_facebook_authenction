import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

class FacebookController extends GetxController {
  Future<void> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      // User logged in successfully
      final AccessToken accessToken = result.accessToken!;
      //print('Access Token: ${accessToken.token}');
    } else {
      // Login failed
      print('Facebook login failed: ${result.message}');
    }
  }

  void handleFacebookLogout() async {
    await FacebookAuth.instance.logOut();
    print('User logged out from Facebook');
  }





// Future<void> signInWithFacebook() async {
  //   try {
  //     print("in funtion ");
  //     final LoginResult result = await FacebookAuth.instance.login();
  //     print('result: ${result.accessToken}');
  //     if (result.status == LoginStatus.success) {
  //
  //       // Firebase authentication Proof
  //       final AccessToken accessToken = result.accessToken!;
  //        print('Access token: ${accessToken.token}');
  //
  //       // Get user's data using the access token
  //       final profile = await FacebookAuth.i.getUserData();
  //       print('Hello, ${profile['name']}! You have successfully logged in with Facebook.');
  //     } else {
  //       print('Login failed.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:get/get.dart';
// class FacebookController extends GetxController {
//   Future<UserCredential> signInWithFacebook() async {
//     // Trigger the sign-in flow
//     final LoginResult loginResult = await FacebookAuth.instance.login();
//
//     // Create a credential from the access token
//     final OAuthCredential facebookAuthCredential = FacebookAuthProvider
//         .credential(loginResult.accessToken!.token);
//
//     // Once signed in, return the UserCredential
//     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//   }
// }