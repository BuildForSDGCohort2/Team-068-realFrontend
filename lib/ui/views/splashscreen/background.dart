import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/lefttop13.png',
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/leftbottom1.png',
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            child: Image.asset(
              'assets/images/houseEc.png',
              width: size.width,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
