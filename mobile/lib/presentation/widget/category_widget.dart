import 'package:flutter/material.dart';
import '../../common/extensions.dart';
import '../../dummy_data.dart';


class CategoryWidget extends StatelessWidget {
  final BoxConstraints constraints;

  CategoryWidget(this.constraints);

  void selectCategory(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: constraints.maxHeight * 0.4,
      child: GridView(
        children: Dummy_Categories.map((category) {
          return InkWell(
            onTap: () => selectCategory(context),
            splashColor: context.accentColor,
//                        customBorder: CircleBorder(side: BorderSide()),
            child: CircleAvatar(
              backgroundColor: context.accentColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      category.title,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  category.icon
                ],
              ),
            ),
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 115,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
