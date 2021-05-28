import 'package:flutter/material.dart';

class Picker extends StatelessWidget {
  final bool isDate;
  final String hint;
  final DateTime initialDate;
  final TimeOfDay initialTime;
  final DateTime firstDate;
  final DateTime lastDate;
  final void Function(DateTime dateTime) onDateTime;
  final void Function(TimeOfDay time) onTime;

  const Picker({
    Key key,
    this.isDate = true,
    this.hint,
    this.initialDate,
    this.initialTime,
    this.firstDate,
    this.lastDate,
    this.onDateTime,
    this.onTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: TextField(
        readOnly: true,
        controller:
            TextEditingController(text: initialDate?.toString()?.split(' ')?.elementAt(0)),
        decoration: InputDecoration(hintText: hint),
        onTap: () async {
          isDate
              ? onDateTime(await showDatePicker(
                  context: context,
                  initialDate: initialDate ?? DateTime.now(),
                  firstDate:
                      firstDate ?? DateTime.now().subtract(Duration(days: 2000)),
                  lastDate: lastDate ?? DateTime.now().add(Duration(days: 2000))))
              : onTime(await showTimePicker(
                  context: context,
                  initialTime: initialTime ?? TimeOfDay.now(),
                ));
        },
      ),
    );
  }
}
