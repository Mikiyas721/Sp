import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/add_employee_view_model.dart';
import 'package:sp_web/presentation/models/employees_view_model.dart';
import 'package:sp_web/presentation/views/add_employee_view.dart';
import 'package:sp_web/presentation/views/employees_view.dart';
import 'package:sp_web/presentation/widgets/my_action_button.dart';
import 'package:sp_web/presentation/widgets/my_drawer.dart';
import '../../common/extensions.dart';

class EmployeesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                        employeesViewModel:
                            EmployeesViewModel(isLoading: false),
                        onListFilter: (String filter) {},
                        onSearchFilter: (String filter) {},
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddEmployeeView(
                          addEmployeeViewModel: AddEmployeeViewModel(),
                          onFirstName: (String firstName) {},
                          onLastName: (String firstName) {},
                          onPhoneNumberName: (String firstName) {},
                          onEmailName: (String firstName) {},
                          onDobName: (String firstName) {},
                          onImage: () {},
                          onDocument: () {},
                          onAdd: () {},
                        );
                      });
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
