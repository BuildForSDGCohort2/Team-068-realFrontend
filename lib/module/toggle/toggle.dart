import 'package:flutter/material.dart';
import 'package:lacus/ui/views/signin/signin.dart';
import 'package:lacus/ui/views/signup/signup.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginView(toggleView);
    } else {
      return Description();
    }
  }
}
