import 'package:flutter/material.dart';
import '../../common/extensions.dart';

class MyDropdown extends StatelessWidget {
  final List<String> items;
  final String currentItem;
  final double width;
  final String hint;
  final void Function(String selectedValue) onChanged;

  const MyDropdown({
    Key key,
    this.items,
    this.currentItem,
    this.width,
    this.hint,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 9.allPadding,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: DropdownButton<String>(
          iconSize: 18,
          isDense: true,
          value: currentItem,
          hint: Text(hint, style: context.subtitle2,),
          underline: Container(
            width: 0,
            height: 0,
          ),
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
