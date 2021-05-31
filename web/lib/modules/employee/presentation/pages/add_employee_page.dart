import 'package:flutter/material.dart';
import 'package:sp_web/modules/employee/presentation/models/add_employee_view_model.dart';
import 'package:sp_web/common/widgets/my_outline_button.dart';
import 'package:sp_web/modules/employee/presentation/views/add_employee_view.dart';

class AddEmployeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 20,
              right: 45,
              child: MyOutlineButton(
                label: 'Dashboard',
                width: 150,
                onPressed: () {
                  print('Not disabled');
                  Navigator.pushReplacementNamed(context, '/dashboard');
                },
              )),
          SingleChildScrollView(
            child: Center(
              child: AddEmployeeView(
                addEmployeeViewModel: AddEmployeeViewModel(),
                onFirstName: (String firstName) {},
                onLastName: (String firstName) {},
                onPhoneNumberName: (String firstName) {},
                onEmailName: (String firstName) {},
                onDobName: (String firstName) {},
                onImage: () {},
                onDocument: () {},
                onAdd: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
