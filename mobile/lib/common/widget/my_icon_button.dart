import 'package:flutter/material.dart';
import '../../common/extensions.dart';

class MyIconButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MyIconButton({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: context.accentColor,
      child: CircleAvatar(
        backgroundColor: context.accentColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                title,
                textAlign: TextAlign.center,
              ),
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }
}
