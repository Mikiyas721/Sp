import 'package:flutter/material.dart';

class BorderTextField extends StatelessWidget {
  final String errorMessage;
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;

  const BorderTextField({
    Key key,
    @required this.errorMessage,
    @required this.labelText,
    @required this.icon,
    @required this.onChanged,
    this.obscureText = false,
    this.hintText,
    this.keyBoardType = TextInputType.text,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              size: 18,
              color: Color(0xFF707070),
            ),
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            errorText: errorMessage,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        keyboardType: keyBoardType,
      ),
    );
  }
}
