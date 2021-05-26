import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/latest_view_item_model.dart';
import '../../common/extensions.dart';

class LatestListItem extends StatelessWidget {
  final List<LatestViewItemModel> dummyLatestItems;
  final int index;

  LatestListItem(this.dummyLatestItems, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        child: LayoutBuilder(builder: (_, constraint) {
          return Row(
            children: [
              Container(
                height: constraint.maxHeight,
                width: constraint.maxWidth * 0.4,
                child: Image.network(dummyLatestItems[index].imageUrl,
                    fit: BoxFit.cover),
              ),
              10.0.hSpace,
              Padding(
                padding: 15.0.topPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dummyLatestItems[index].itemName,
                      style: context.headline6,
                    ),
                    4.0.vSpace,
                    Row(
                      children: [
                        Icon(Icons.shopping_cart),
                        3.0.hSpace,
                        Text(
                          dummyLatestItems[index].quantity.toString(),
                        ),
                      ],
                    ),
                    5.0.vSpace,
                    Container(
                      width: constraint.maxWidth * 0.5,
                      child: Text(
                        DateFormat.yMd().format(dummyLatestItems[index].date),
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
