import 'package:flutter/material.dart';
import 'package:lacus/backend/services/auth/authenticate.dart';
import 'package:lacus/backend/services/database/database.dart';
import 'package:lacus/backend/services/helper_function/helper_function.dart';

import 'package:lacus/ui/views/signup/signup_success/signup_successful.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/isloading/isloading.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final Authenticate _authenticate = Authenticate();
  DataBaseMethod dataBaseMethod = DataBaseMethod();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailTextEditingController,
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
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordTextEditingController,
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
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: true,
                    controller: confirmPasswordTextEditingController,
                    validator: (val) {
                      return passwordTextEditingController.text ==
                              confirmPasswordTextEditingController.text
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: firstNameTextEditingController,
                    validator: (val) {
                      return val.length > 1
                          ? null
                          : 'Please enter a valid name';
                    },
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      hintText: 'Enter your first name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: lastNameTextEditingController,
                    validator: (val) {
                      return val.length > 1
                          ? null
                          : 'Please enter a valid name';
                    },
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintText: 'Enter your last name',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.person_outline),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: phoneTextEditingController,
                    validator: (val) {
                      return val.length == 11
                          ? null
                          : ' Kindly enter a valid number';
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'enter your phone number',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.phone_iphone),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Text(error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0)),
                RoundedButton(
                  color: indigo,
                  textColor: white,
                  text: 'Register',
                  press: () async {
                    if (_formKey.currentState.validate()) {
                      setState(() {
                        isLoading = true;
                      });
                      dynamic result =
                          await _authenticate.signUpWithEmailAndPassword(
                              emailTextEditingController.text,
                              passwordTextEditingController.text);
                      if (result == null) {
                        setState(() {
                          isLoading = false;
                        });
                        setState(() {
                          error = 'Email already have an account linked';
                        });
                      } else {
                        Map<String, String> userInfoMap = {
                          'firstName': firstNameTextEditingController.text,
                          'email': emailTextEditingController.text,
                          'lastName': lastNameTextEditingController.text,
                          'phoneNumber': phoneTextEditingController.text,
                        };
                        HelperFunction.saveUserFirstNameSharedPreference(
                            firstNameTextEditingController.text);
                        HelperFunction.saveUserLastNameSharedPreference(
                            lastNameTextEditingController.text);
                        HelperFunction.saveUserPhoneNumberSharedPreference(
                            phoneTextEditingController.text);
                        HelperFunction.saveUserEmailSharedPreference(
                            emailTextEditingController.text);
                        dataBaseMethod.uploadUserInfo(userInfoMap);
                        HelperFunction.saveUserLoggedInSharedPreference(true);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessfulRegistration()),
                        );
                      }
                    }
                  },
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  'By registering you agree with \nour terms and condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
  }
}
