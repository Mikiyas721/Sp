import 'package:flutter/material.dart';
import '../../common/extensions.dart';

class MyDropdown extends StatefulWidget {
  final List<String> items;
  final String currentItem;
  final double width;
  final void Function(String selectedValue) onChanged;

  MyDropdown(
      {@required this.items,
      @required this.onChanged,
        @required this.width,
      @required this.currentItem});

  @override
  State<StatefulWidget> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String selectedValue;

  @override
  void initState() {
    selectedValue = widget.currentItem ?? widget.items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.allPadding,
      width: widget.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child: DropdownButtonFormField<String>(
          decoration: InputDecoration.collapsed(hintText: 'Filter'),
          value: selectedValue,
          items: widget.items
              .map<DropdownMenuItem<String>>((String value) =>
                  DropdownMenuItem<String>(
                      value: value,
                      child:
                          Text(value, style: TextStyle(color: Colors.black45))))
              .toList(),
          onChanged: (String value) {
            setState(() {
              selectedValue = value;
              widget.onChanged(value);
            });
          }),
    );
  }
}
