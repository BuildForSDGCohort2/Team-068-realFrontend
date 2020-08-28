import 'package:flutter/material.dart';

class DeliveryDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Delivery Details'),
        backgroundColor: Color(0xFF2A4D73),
        centerTitle: true,
      ),
      drawer: Drawer(),
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
            //TODO: handle navigation
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
