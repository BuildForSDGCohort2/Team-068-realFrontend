import 'package:flutter/material.dart';
import 'package:lacus/backend/services/auth/authenticate.dart';
import 'package:lacus/backend/services/database/database.dart';
import 'package:lacus/module/constant_value/Name_const.dart';
import 'package:lacus/module/constant_value/last_name.dart';
import 'package:lacus/ui/views/splashscreen/welcome.dart';
import 'package:lacus/ui/views/trip_details/trip_details.dart';
import 'package:lacus/widget/colors/color.dart';

Widget drawerLink(BuildContext context) {
  DataBaseMethod dataBaseMethod = new DataBaseMethod();
  final Authenticate _authenticate = Authenticate();
  return Drawer(
    child: Column(children: [
      Container(
        width: double.infinity,
        height: 300,
        color: indigo,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/sam.jpg'),
              ),
              SizedBox(
                height: 10.0,
                width: 160.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                "${Constants.fistName} ${ConstantsLn.lastName}",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 160.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: lightIndigo,
                margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: indigo,
                  ),
                  title: Text(
                    '${Constants2.phoneNumber}',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: lightIndigo,
                margin: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: indigo,
                  ),
                  title: Text(
                    '${Constants3.email}',
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontSize: 12.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ]),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 300,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.home),
                    Text(
                      'Home',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 300,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.details),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TripDetails(),
                          ),
                        );
                      },
                      child: Text(
                        'Trip Details',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: 300,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.help),
                    Text(
                      'Help',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              _authenticate.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Welcome(),
                ),
              );
            },
            child: Container(child: Text('LOGOUT')),
          ),
        ],
      )
    ]),
  );
}
