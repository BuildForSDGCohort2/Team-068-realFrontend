import 'package:flutter/material.dart';
import 'package:lacus/services/auth/authenticate.dart';
import 'package:lacus/services/database/database.dart';
import 'package:lacus/shared/details/email.dart';
import 'package:lacus/shared/details/password.dart';
import 'package:lacus/ui/views/signup/signup.dart';
import 'package:lacus/ui/views/signup/signup_success/signup_successful.dart';
import 'package:lacus/ui/views/signup/signupwidget/profile.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final Authenticate _authenticate = Authenticate();
  DataBaseMethod dataBaseMethod = DataBaseMethod();
  final _formKey = GlobalKey<FormState>();
  final String email = '';
  final String password = '';
  String confirmPassword = '';
  Email _email = Email();
  Password _password = Password();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 15, vertical: size.height * 0.01),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {
                  setState(() {
                    _email.email = val;
                  });
                },
                validator: (val) {
                  return RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(val)
                      ? null
                      : 'Please provide a valid email';
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your Email.',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.mail),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    _password.password = val;
                  });
                },
                validator: (val) {
                  return val.length > 5
                      ? null
                      : ' Kindly ensure password is 5+ character';
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() {
                    confirmPassword = val;
                  });
                },
                validator: (val) {
                  return _password.password == confirmPassword
                      ? null
                      : ' Password mismatch';
                },
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Re-enter your Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              color: indigo,
              textColor: white,
              text: 'CONTINUE',
              press: () async {
                if (_formKey.currentState.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                  print(
                      '${_email.email},${_password.password}, $confirmPassword');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
