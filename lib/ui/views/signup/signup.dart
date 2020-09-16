import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacus/services/auth/authenticate.dart';
import 'package:lacus/services/database/database.dart';
import 'package:lacus/ui/views/signup/signup_success/signup_successful.dart';
import 'package:lacus/ui/views/signup/signupwidget/registration_form.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: indigo,
        centerTitle: true,
        title: Text('SIGNUP'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.04,
                ),
                Text(
                  'Register Account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: indigo,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                RegisterForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






