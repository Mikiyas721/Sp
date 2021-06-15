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
  final bool readOnly;
  final int minLines;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;
  final VoidCallback onTap;

  const BorderTextField({
    Key key,
    this.errorMessage,
    this.labelText,
    this.icon,
    @required this.onChanged,
    this.obscureText = false,
    this.hintText,
    this.height = 50,
    this.width = 250,
    this.suffix,
    this.readOnly = false,
    this.minLines = 1,
    this.keyBoardType = TextInputType.text,
    this.onSubmitted,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        readOnly: readOnly,
        enabled: !readOnly,
        minLines: obscureText?1:minLines,
		maxLines:obscureText?1:minLines+1,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffix: suffix,
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            errorText: errorMessage,
            prefixIcon: icon == null
                ? null
                : Icon(
                    icon,
                    size: 18,
                    color: Color(0xFF707070),
                  ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            )),
        onChanged: onChanged,
        onTap: onTap,
        onSubmitted: onSubmitted,
        keyboardType: keyBoardType,
      ),
    );
  }
}
