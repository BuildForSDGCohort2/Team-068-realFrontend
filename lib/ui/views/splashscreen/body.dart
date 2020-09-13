import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacus/module/toggle/toggle.dart';
import 'package:lacus/ui/views/signup/signup.dart';
import 'package:lacus/ui/views/splashscreen/background.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO LACUS",
              style: TextStyle(fontWeight: FontWeight.w700, color: indigo),
            ),
            Image.asset(
              'assets/images/movement.png',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              textColor: white,
              color: indigo,
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Verify()),
                );
              },
            ),
            RoundedButton(
              textColor: Colors.black,
              color: lightIndigo,
              text: 'SIGNUP',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Description(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
