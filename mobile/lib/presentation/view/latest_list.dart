import 'package:flutter/material.dart';
import '../widget/latest_list_item.dart';
import '../../dummy_data.dart';

class LatestList extends StatelessWidget {
  final BoxConstraints constraints;

  LatestList(this.constraints);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.45,
      child: ListView.builder(
          itemCount: dummyLatestItems.length,
          itemBuilder: (_, index) {
            return LatestListItem(dummyLatestItems, index);
          }),
    );
  }
}
