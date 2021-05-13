import 'package:flutter/material.dart';
import '../../common/extensions.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final String currentItem;
  final double width;
  final void Function(String selectedValue) onChanged;

  const MyDropdown({
    Key key,
    this.items,
    this.currentItem,
    this.width,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.allPadding,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration.collapsed(hintText: 'Filter'),
          value: currentItem??items[0],
          items: items
              .map<DropdownMenuItem<String>>((String value) =>
                  DropdownMenuItem<String>(
                      value: value,
                      child:
                          Text(value, style: TextStyle(color: Colors.black45))))
              .toList(),
          onChanged: onChanged),
    );
  }
}
