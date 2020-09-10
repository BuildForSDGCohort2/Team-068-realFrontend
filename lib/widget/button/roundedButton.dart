import 'package:flutter/material.dart';
import 'package:lacus/widget/colors/color.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function press;
  const RoundedButton(
      {Key key, this.text, this.color, this.press, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          onPressed: press,
          color: color,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
