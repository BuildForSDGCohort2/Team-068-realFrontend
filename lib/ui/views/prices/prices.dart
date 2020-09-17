import 'package:flutter/material.dart';
import 'package:lacus/backend/services/helper_function/helper_function.dart';
import 'package:lacus/module/constant_value/last_name.dart';

enum IsSelected { picked, notPicked }

class Prices extends StatefulWidget {
  @override
  _PricesState createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  void initState() {
    getUserLast();
    super.initState();
  }

  getUserLast() async {
    ConstantsLn.lastName =
        await HelperFunction.getUserFirstNameSharedPreference();
  }

  IsSelected _selected = IsSelected.notPicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Prices'),
        centerTitle: true,
        backgroundColor: Color(0xFF2A4D73),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('TRX Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,000'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('ETH Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,000'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('BTC Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,000'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('THG Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,000'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('GIG Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,000'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('GUI Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,200'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text('GUI Motors',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              subtitle: Text('N2,200'),
              trailing: Radio(
                  activeColor: Color(0xFF68708A),
                  value: IsSelected.notPicked,
                  groupValue: _selected,
                  onChanged: (value) {}),
            ),
          ),
          SizedBox(height: 100)
        ],
      )),
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
            'Place Trip',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
