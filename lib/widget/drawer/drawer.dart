import 'package:flutter/material.dart';
import 'package:lacus/backend/services/auth/authenticate.dart';
import 'package:lacus/ui/views/splashscreen/welcome.dart';
import 'package:lacus/widget/colors/color.dart';

Widget drawerLink(BuildContext context) {
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
                "Eniola Olatubosun",
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
                    '+234 8095 888 215',
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
                    'olatubosuneniola@yahoo.com',
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
                    Icon(Icons.settings),
                    Text(
                      'Settings',
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
                    Icon(Icons.settings),
                    Text(
                      'Security',
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
                    Icon(Icons.settings),
                    Text(
                      'Help',
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
                    Icon(Icons.settings),
                    Text(
                      'Sign Out',
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
