import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/modules/employee/presentation/controller/new_employee_controller.dart';
import 'package:sp_web/modules/employee/presentation/models/new_employee_view_model.dart';
import 'package:sp_web/common/widgets/my_outline_button.dart';
import 'package:sp_web/modules/employee/presentation/views/new_employee_view.dart';

class NewEmployeePage extends StatelessWidget {
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
              child: ViewModelBuilder.withController<NewEmployeeViewModel,
                      NewEmployeeController>(
                  create: () => NewEmployeeController(context),
                  builder: (context, controller, model) {
                    return NewEmployeeView(
                      addEmployeeViewModel: model,
                      onFirstName: controller.onFirstName,
                      onLastName: controller.onLastName,
                      onPhoneNumber: controller.onPhoneNumber,
                      onEmail: controller.onEmail,
                      onEmployeePosition: controller.onEmployeePosition,
                      onSalary: controller.onSalary,
                      onEmployeeType: controller.onEmployeeType,
                      onImage: controller.onImage,
                      onAdd: controller.onAdd,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
