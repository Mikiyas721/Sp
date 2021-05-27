import 'package:flutter/material.dart';
import 'package:sp_client/presentation/model/item_view_model.dart';
import '../../common/extensions.dart';

class ItemListPage extends StatelessWidget {
  static final String routeName = "/item-list-page";
  final List<ItemViewModel> dummyItems;

  ItemListPage(this.dummyItems);

  AppBar get appBar => AppBar(
        title: Text(
          "Item List Type Here",
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight -
              appBar.preferredSize.height -
              context.screenTop,
          padding: 15.0.hPadding,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter product name",
                ),
                onChanged: (string) {},
              ),
              10.0.vSpace,
              Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: dummyItems.length,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 100,
                          child: Card(
                            child: LayoutBuilder(
                              builder: (ctx, constraints) {
                                return Row(
                                  children: [
                                    Container(
                                      width: constraints.maxWidth * 0.4,
                                      height: constraints.maxHeight,
                                      child: Image.network(
                                        dummyItems[index].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    10.0.hSpace,
                                    Padding(
                                        padding: 10.0.topPadding,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(dummyItems[index].title),
                                            Text("\$${dummyItems[index].price}")
                                          ],
                                        ))
                                  ],
                                );
                              },
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
