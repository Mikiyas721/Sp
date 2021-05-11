import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_list_tile.dart';
import '../../common/extensions.dart';

class MyDrawer extends StatefulWidget {
  final void Function(int index) onItemSelected;

  const MyDrawer({Key key, @required this.onItemSelected}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  int activeIndex;

  @override
  void initState() {
    activeIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.17,
      child: Drawer(
        child: ListView(
          children: [
            Center(
              child: Container(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/1.png'),
                    ),
                    10.hSpace,
                    Text(
                      'Gebeya',
                      style: context.headline6,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            MyListTile(
              icon: Icons.dashboard,
              label: 'Dashboard',
              isActive: activeIndex == 0,
              onTap: () {
                setState(() {
                  if (activeIndex != 0) {
                    activeIndex = 0;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
            MyListTile(
              icon: Icons.person_pin_outlined,
              label: 'Employees',
              isActive: activeIndex == 1,
              onTap: () {
                setState(() {
                  if (activeIndex != 1) {
                    activeIndex = 1;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
            MyListTile(
              icon: Icons.admin_panel_settings_outlined,
              label: 'Admins',
              isActive: activeIndex == 2,
              onTap: () {
                setState(() {
                  if (activeIndex != 2) {
                    activeIndex = 2;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
            MyListTile(
              icon: Icons.people,
              label: 'Clients',
              isActive: activeIndex == 3,
              onTap: () {
                setState(() {
                  if (activeIndex != 3) {
                    activeIndex = 3;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
            MyListTile(
              icon: Icons.shop_outlined,
              label: 'Products',
              isActive: activeIndex == 4,
              onTap: () {
                setState(() {
                  if (activeIndex != 4) {
                    activeIndex = 4;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
            MyListTile(
              icon: Icons.feedback_outlined,
              label: 'Feedbacks',
              isActive: activeIndex == 5,
              onTap: () {
                setState(() {
                  if (activeIndex != 5) {
                    activeIndex = 5;
                    widget.onItemSelected(activeIndex);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
