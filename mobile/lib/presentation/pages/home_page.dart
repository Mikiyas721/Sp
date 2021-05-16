import 'package:flutter/material.dart';
import '../view/latest_list.dart';
import '../widget/category_widget.dart';
import '../../common/extensions.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/categories-page";

  void onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: (context.screenHeight - context.paddingTop),
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: LayoutBuilder(builder: (ctx, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Categories",
                style: context.headline1,
                textAlign: TextAlign.center,
              ),
              CategoryWidget(constraints),
              15.0.vSpace,
              Text(
                "Latest",
                style: context.headline1,
              ),
              LatestList(constraints)
            ],
          );
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_sharp),
            label: "Request",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_comment),
            label: "Suggestions",
          ),
        ],
        onTap: onItemTapped,
      ),
    );
  }
}
