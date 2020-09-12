import 'package:flutter/material.dart';
import 'package:lacus/widget/colors/color.dart';
import 'package:lacus/widget/decoration/textfield.dart';

class RoundedEmailField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedEmailField({Key key, this.hintText, this.icon, this.onChanged})
      : super(key: key);

  @override
  _RoundedEmailFieldState createState() => _RoundedEmailFieldState();
}

class _RoundedEmailFieldState extends State<RoundedEmailField> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Form(
        key: _formKey,
        child: TextFormField(
          validator: (val) => val.isEmpty ? 'Enter an Email' : null,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            icon: Icon(
              widget.icon,
              size: 20,
              color: indigo,
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField(
      {Key key, this.hintText, this.icon, this.onChanged})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Form(
        key: _formKey,
        child: TextFormField(
          validator: (val) =>
              val.length < 6 ? 'Input a password more than 6 character' : null,
          obscureText: true,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText,
            icon: Icon(
              widget.icon,
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
      ),
    );
  }
}
