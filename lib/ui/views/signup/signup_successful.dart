import 'package:flutter/material.dart';

class SuccessfulRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        backgroundColor: Color(0xFF2A4D73),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Color(0xFF687089),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Icon(Icons.check, size: 80, color: Colors.white,)
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Registration was successful.', style: TextStyle(fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('You can now proceed to\n Login', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey)),
          )
        ],
      )),
      floatingActionButton: SizedBox(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xFF2A4D73),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      //TODO: handle navigation
                    },
                    child: Text(
                      'Go to Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
