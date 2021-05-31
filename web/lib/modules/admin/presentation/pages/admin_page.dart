import 'package:flutter/material.dart';
import 'package:sp_web/modules/admin/presentation/models/admin_view_model.dart';
import 'package:sp_web/modules/admin/presentation/views/admin_view.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';

class AdminsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(index: 2),
          Scrollbar(
            child: SingleChildScrollView(
              child: AdminView(
                adminViewModel: AdminViewModel(
                  isLoading: false,
                  isPerformingQuery: false,
                ),
                onFilterChanged: (String filter) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
