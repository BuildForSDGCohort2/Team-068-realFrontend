import 'package:flutter/material.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/decoration/textfield.dart';

class RoundedEmailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedEmailField({Key key, this.hintText, this.icon, this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          icon: Icon(
            icon,
            size: 20,
            color: indigo,
          ),
        ),
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField(
      {Key key, this.hintText, this.icon, this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          icon: Icon(
            icon,
            size: 20,
            color: indigo,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            size: 20,
            color: indigo,
          ),
        ),
      ),
    );
  }
}
