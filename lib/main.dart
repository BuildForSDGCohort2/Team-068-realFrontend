import 'package:flutter/material.dart';
import 'package:lacus/backend/services/fb/auth_blocs.dart';
import 'package:lacus/backend/services/fb/fb.dart';
import 'package:lacus/ui/views/splashscreen/welcome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lacus',
        theme: ThemeData(
          primaryColor: Colors.indigo,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Welcome(),
      ),
    );
  }
}
