import 'package:flutter/material.dart';
import 'package:lacus/services/auth/authenticate.dart';
import 'package:lacus/ui/views/prices/prices.dart';
import 'package:lacus/ui/views/splashscreen/welcome.dart';
import 'package:lacus/widget/colors/color.dart';

class TripDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Authenticate _authenticate = Authenticate();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Trip Details'),
        backgroundColor: Color(0xFF2A4D73),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(children: [
          Container(
              width: double.infinity,
              height: 300,
              color: indigo,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 50,
                    top: 50,
                    child: CircleAvatar(
                      minRadius: 30,
                      maxRadius: 30,
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              )),
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
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 40),
          SizedBox(
            width: 300,
            height: 55,
            child: RaisedButton(
                color: Color(0xFFE5E5EA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Color(0xFF2A4D73))),
                onPressed: () {
                  //TODO: handle event
                },
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.add,
                      color: Color(0xFF2A4D73),
                      size: 32,
                    ),
                    SizedBox(width: 25),
                    Text('Add Pickup Location',
                        style: TextStyle(fontSize: 17, color: Colors.black54)),
                  ],
                )),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 300,
            height: 55,
            child: RaisedButton(
                color: Color(0xFFE5E5EA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Color(0xFF2A4D73))),
                onPressed: () {
                  //TODO: handle event
                },
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.add,
                      color: Color(0xFF2A4D73),
                      size: 32,
                    ),
                    SizedBox(width: 25),
                    Text('Add Destination',
                        style: TextStyle(fontSize: 17, color: Colors.black54)),
                  ],
                )),
          ),
        ]),
      ),
      floatingActionButton: SizedBox(
        width: 300,
        height: 50,
        child: RaisedButton(
          color: Color(0xFF2A4D73),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Prices(),
              ),
            );
          },
          child: Text(
            'Get Price Range',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
