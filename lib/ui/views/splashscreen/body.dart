import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacus/ui/views/signin/signin.dart';

import 'package:lacus/ui/views/splashscreen/background.dart';
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0),
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  color: indigo,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width * 0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  onPressed: () {},
                  color: lightIndigo,
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
