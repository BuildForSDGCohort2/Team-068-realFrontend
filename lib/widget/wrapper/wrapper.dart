import 'package:flutter/material.dart';
import 'package:lacus/module/toggle/toggle.dart';
import 'package:lacus/module/user/user.dart';
import 'package:lacus/ui/views/signin/signin.dart';
import 'package:lacus/ui/views/trip_details/trip_details.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    // return either the home or authenticate screen
    if (user == null) {
      return Verify();
    } else {
      return TripDetails();
    }
  }
}
