import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lacus/services/auth/authenticate.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/isloading/isloading.dart';

class LoginView extends StatefulWidget {
  final Function toggle;
  LoginView(this.toggle);
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool isLoading = false;
  String error = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isLoading
        ? Loading()
        : Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: size.height,
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('LOGIN', style: TextStyle(color: indigo)),
                      Image.asset(
                        'assets/images/appwell.png',
                        height: size.height * 0.35,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: lightIndigo,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                ? null
                                : 'Please provide a valid email';
                          },
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            icon: Icon(
                              Icons.person,
                              size: 20,
                              color: indigo,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: lightIndigo,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: TextFormField(
                          validator: (val) => val.length < 6
                              ? 'Input a password more than 6 character'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            icon: Icon(
                              Icons.lock,
                              size: 20,
                              color: indigo,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              size: 20,
                              color: indigo,
                            ),
                          ),
                        ),
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
                        press: () async {
                          if (_formKey.currentState.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            dynamic result =
                                await _auth.signInWithEmail(email, password);

                            if (result == null) {
                              setState(() {
                                isLoading = false;
                              });
                              setState(() {
                                error = 'Invalid email or password';
                              });
                            }
                          }
                        },
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Color(0xFFD9D9D9),
                              height: 1.5,
                            ),
                          ),
                          Text(
                            'OR',
                            style: TextStyle(color: indigo),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFD9D9D9),
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Sign in with',
                          style: TextStyle(color: indigo),
                        ),
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              widget.toggle();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 9.0),
                              child: Text(
                                "Create now.",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Text(error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0)),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
