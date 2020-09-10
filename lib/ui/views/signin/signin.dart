import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacus/ui/views/trip_details/trip_details.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/decoration/roundedInput.dart';
import 'package:lacus/widget/decoration/textfield.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('LOGIN', style: TextStyle(color: indigo)),
                Image.asset(
                  'assets/images/appwell.png',
                  height: size.height * 0.35,
                ),
                RoundedEmailField(
                  hintText: 'Email',
                  onChanged: (value) {},
                  icon: Icons.person,
                ),
                RoundedPasswordField(
                  hintText: 'Password',
                  onChanged: (value) {},
                  icon: Icons.lock,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text('Forgot your password?',
                          style: TextStyle(color: Colors.black))),
                ),
                RoundedButton(
                  color: indigo,
                  textColor: white,
                  text: 'LOGIN',
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => TripDetails()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('-OR-', style: TextStyle(color: Colors.white)),
                ),
                Text(
                  'Sign in with',
                  style: TextStyle(color: indigo),
                ),
                SizedBox(height: 10),
                ClipOval(
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        'f',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF2A4D73),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
