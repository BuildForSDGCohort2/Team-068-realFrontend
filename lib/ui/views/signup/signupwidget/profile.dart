import 'package:flutter/material.dart';
import 'package:lacus/ui/views/signup/signupwidget/profile_form.dart';
import 'package:lacus/widget/colors/color.dart';

class Profile extends StatelessWidget {
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
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                'Complete Profile',
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
                'Complete your profile or continue \nwith social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ProfileForm(),
            ],
          ),
        ),
      )),
    );
  }
}
