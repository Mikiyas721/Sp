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
    return Container(
      height: 50,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          errorText: errorText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
