import 'package:flutter/material.dart';
import 'package:sp_web/presentation/widgets/my_list_tile.dart';
import '../../common/extensions.dart';

class MyDrawer extends StatefulWidget {
  final int index;

  const MyDrawer({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyDrawer();
}

class _MyDrawer extends State<MyDrawer> {
  int activeIndex;

  @override
  void initState() {
    activeIndex = widget.index;
    super.initState();
  }

  void onItemSelected(int index) {
    if (index == 0)
      Navigator.pushReplacementNamed(context, '/dashboard');
    else if (index == 1)
      Navigator.pushReplacementNamed(context, '/employees');
    else if (index == 2)
      Navigator.pushReplacementNamed(context, '/admins');
    else if (index == 3)
      Navigator.pushReplacementNamed(context, '/clients');
    else if (index == 4)
      Navigator.pushReplacementNamed(context, '/products');
    else if (index == 5) Navigator.pushReplacementNamed(context, '/feedback');
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
                    onItemSelected(activeIndex);
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
                    onItemSelected(activeIndex);
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
                    onItemSelected(activeIndex);
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
                    onItemSelected(activeIndex);
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
                    onItemSelected(activeIndex);
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
                    onItemSelected(activeIndex);
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
