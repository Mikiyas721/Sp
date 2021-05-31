import 'package:flutter/material.dart';
import 'package:sp_web/modules/employee/presentation/models/employees_view_model.dart';
import 'package:sp_web/modules/employee/presentation/views/employees_view.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import 'package:sp_web/common/widgets/my_drawer.dart';
import '../../../../common/extensions.dart';

class EmployeesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyDrawer(
            index: 1,
          ),
          Stack(
            children: [
              Scrollbar(
                  isAlwaysShown: true,
                  showTrackOnHover: true,
                  controller: ScrollController(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        40.vSpace,
                        EmployeesView(
                          employeesViewModel: EmployeesViewModel(
                              isLoading: false, isPerformingQuery: false),
                          onFilterChanged: (String filter) {},
                          onSearchFilterChanged: (String filter) {},
                          onSearch: (String text) {},
                        ),
                      ],
                    ),
                  )),
              Positioned(
                right: 20,
                top: 20,
                child: MyActionButton(
                  label: 'Add Employee',
                  width: 150,
                  radius: 8,
                  onPressed: () {
                    Navigator.pushNamed(context, '/addEmployee');
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
