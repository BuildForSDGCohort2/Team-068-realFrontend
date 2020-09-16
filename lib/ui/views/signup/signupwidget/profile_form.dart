import 'package:flutter/material.dart';
import 'package:lacus/services/auth/authenticate.dart';
import 'package:lacus/shared/details/email.dart';
import 'package:lacus/shared/details/password.dart';
import 'package:lacus/ui/views/signup/signup_success/signup_successful.dart';
import 'package:lacus/widget/button/roundedButton.dart';
import 'package:lacus/widget/colors/color.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final Authenticate _authenticate = Authenticate();
  String error = '';
  String firstName = '';
  String lastName = '';
  String phoneNumber = '';
  Email _email = Email();
  Password _password = Password();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onSaved: (newVal) => firstName = newVal,
              onChanged: (val) {},
              validator: (val) {
                return val.length > 1 ? null : 'Please enter a valid name';
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              onSaved: (newVal) => lastName = newVal,
              onChanged: (val) {},
              validator: (val) {
                return val.length > 1
                    ? null
                    : ' Kindly ensure a name is written';
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              onSaved: (newVal) => phoneNumber = newVal,
              onChanged: (val) {},
              validator: (val) {
                return val.length > 10 ? null : ' Kindly enter a valid number';
              },
              decoration: InputDecoration(
                labelText: 'Phone Number',
                hintText: 'enter your phone number',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Text(error, style: TextStyle(color: Colors.red, fontSize: 14.0)),
          RoundedButton(
            color: indigo,
            textColor: white,
            text: 'CONTINUE',
            press: () async {
              if (_formKey.currentState.validate()) {
                print('${_email.email},${_password.password}');
                dynamic result = await _authenticate.signUpWithEmailAndPassword(
                    _email.email, _password.password);
                if (result == null) {
                  setState(() {
                    error = 'Email already have an account linked';
                  });
                } else {
                  setState(() {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccessfulRegistration()),
                    );
                  });
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
