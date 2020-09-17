import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lacus/backend/services/auth/authenticate.dart';
import 'package:lacus/backend/services/database/database.dart';
import 'package:lacus/backend/services/helper_function/helper_function.dart';
import 'package:lacus/module/constant_value/Name_const.dart';
import 'package:lacus/module/constant_value/last_name.dart';
import 'package:lacus/ui/views/prices/prices.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/drawer/drawer.dart';

class TripDetails extends StatefulWidget {
  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  DataBaseMethod dataBaseMethod = new DataBaseMethod();
  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  getUserInfo() async {
    Constants.fistName =
        await HelperFunction.getUserFirstNameSharedPreference();
    ConstantsLn.lastName =
        await HelperFunction.getUserLastNameSharedPreference();
    Constants3.email = await HelperFunction.getUserEmailSharedPreference();
    Constants2.phoneNumber =
        await HelperFunction.getUserPhoneNumberSharedPreference();
  }

  @override
  Widget build(BuildContext context) {
    final Authenticate _authenticate = Authenticate();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Trip Details'),
          backgroundColor: Color(0xFF2A4D73),
          centerTitle: true,
        ),
        drawer: drawerLink(context),
        body: Center(
          child: Column(children: [
            SizedBox(height: 40),
            Text(
              'Hi ${Constants.fistName}, kindly book a ride.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: indigo,
              ),
            ),
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
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
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
                          style:
                              TextStyle(fontSize: 17, color: Colors.black54)),
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
      ),
    );
  }
}
