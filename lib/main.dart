import 'package:flutter/material.dart';
import 'package:lacus/ui/views/delivery_details/delivery_details.dart';
import 'package:lacus/ui/views/prices/prices.dart';
import 'package:lacus/ui/views/signin/signin.dart';
import 'package:lacus/ui/views/signup/signup.dart';
import 'package:lacus/ui/views/signup/signup_successful.dart';
import 'package:lacus/ui/views/splashscreen/splashscreen.dart';
import 'package:lacus/ui/views/trip_details/trip_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF2A4D73),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TripDetails(),
    );
  }
}

