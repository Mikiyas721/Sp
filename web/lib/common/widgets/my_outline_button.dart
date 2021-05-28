import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyOutlineButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final double width;
  final double height;
  final double radius;
  final VoidCallback onPressed;

  const MyOutlineButton(
      {Key key,
      @required this.label,
      @required this.onPressed,
      this.isLoading = false,
      this.width = double.infinity,
      this.height = 35,
      this.radius = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlineButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          onPressed: onPressed,
          child: isLoading
              ? SpinKitFadingCircle(
                  size: 30,
                  color: Color(0xFF0080FF),
                )
              : Text(label)),
    );
  }
}
