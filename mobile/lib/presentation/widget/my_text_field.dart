import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String errorText;
  final Function onChanged;

  MyTextField(
      {@required this.hintText,
      @required this.errorText,
      @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
