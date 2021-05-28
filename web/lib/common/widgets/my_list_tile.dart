import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  MyListTile({
    @required this.icon,
    @required this.label,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? Color(0x550080FF) : Colors.white.withOpacity(0),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon),
        title: Text(label),
      ),
    );
  }
}
