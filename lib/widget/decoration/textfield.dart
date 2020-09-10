import 'package:flutter/material.dart';
import 'package:lacus/widget/colors/color.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: lightIndigo,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
