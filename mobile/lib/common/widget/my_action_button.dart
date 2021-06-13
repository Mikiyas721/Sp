import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onClick;
  final bool isLoading;

  const MyActionButton({
    Key key,
    @required this.label,
    this.isLoading = false,
    @required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: isLoading
          ? CircularProgressIndicator()
          : Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
