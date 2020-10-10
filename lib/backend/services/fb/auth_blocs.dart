import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:lacus/backend/services/auth/authenticate.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
import 'package:flutter/material.dart';

class AuthBloc {
  final authService = Authenticate();
  final fb = FacebookLogin();
  Stream<FirebaseUser> get currentUser => authService.currentUser;
  loginFacebook() async {
    final res = await fb.logIn(permissions: [
      FacebookPermission.email,
      FacebookPermission.publicProfile
    ]);
    switch (res.status) {
      case FacebookLoginStatus.Success:
        print('Successful');
        //Get token
        final FacebookAccessToken fbToken = res.accessToken;
        //Convert to auth credential
        final AuthCredential credential =
            FacebookAuthProvider.getCredential(accessToken: fbToken.token);
        //User result to sign in to firebase
        final result = await Authenticate().signInWithCredential(credential);
        print('${result.user.displayName}');
        break;
      case FacebookLoginStatus.Cancel:
        print('User Cancel');
        break;
      case FacebookLoginStatus.Error:
        print('Error occurs');
        break;
    }
  }
}
