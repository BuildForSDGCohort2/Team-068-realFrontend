import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String email = '';
  String password = '';
  String confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 15, vertical: size.height * 0.01),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (newVal) => email = newVal,
                onChanged: (val) {},
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
                onSaved: (newVal) => password = newVal,
                onChanged: (val) {},
                validator: (val) {
                  return val.length > 8
                      ? null
                      : ' Kindly ensure password is 8+ character';
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
                onSaved: (newVal) => confirmPassword = newVal,
                onChanged: (val) {},
                validator: (val) {
                  return password == confirmPassword
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
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            'REGISTER ACCOUNT',
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          Text(
            'Complete your details or continue \nwith social media',
            textAlign: TextAlign.center,
          ),
          RegisterForm(),
        ],
      ),
    );
  }
}

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  String email = '';
  String password = '';
  String confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onSaved: (newVal) => email = newVal,
              onChanged: (val) {},
              validator: (val) {
                return val.length > 1 ? null : 'Please provide a valid email';
              },
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
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
              onSaved: (newVal) => password = newVal,
              onChanged: (val) {},
              validator: (val) {
                return val.length > 1
                    ? null
                    : ' Kindly ensure password is 8+ character';
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
              onSaved: (newVal) => confirmPassword = newVal,
              onChanged: (val) {},
              validator: (val) {
                return password == confirmPassword
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
            press: () {},
          ),
        ],
      ),
    );
  }
}
