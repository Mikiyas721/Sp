import 'package:flutter/material.dart';

class BorderTextField extends StatelessWidget {
  final String errorMessage;
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextInputType keyBoardType;
  final bool obscureText;
  final double height;
  final double width;
  final Widget suffix;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;

  const BorderTextField({
    Key key,
    this.errorMessage,
    this.labelText,
    this.icon,
    @required this.onChanged,
    this.obscureText = false,
    this.hintText,
    this.height = 45,
    this.width,
    this.suffix,
    this.keyBoardType = TextInputType.text,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            prefixIcon: icon == null
                ? null
                : Icon(
                    icon,
                    size: 18,
                    color: Color(0xFF707070),
                  ),
            suffix: suffix,
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
