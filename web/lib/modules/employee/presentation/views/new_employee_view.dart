import 'package:flutter/material.dart';
import 'package:sp_web/modules/employee/presentation/models/new_employee_view_model.dart';
import 'package:sp_web/common/widgets/border_text_field.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import '../../../../common/extensions.dart';

class NewEmployeeView extends StatelessWidget {
  final NewEmployeeViewModel addEmployeeViewModel;
  final void Function(String firstName) onFirstName;
  final void Function(String lastName) onLastName;
  final void Function(String phoneNumber) onPhoneNumber;
  final void Function(String email) onEmail;
  final void Function(String employeePosition) onEmployeePosition;
  final void Function(String salary) onSalary;
  final void Function(String employeeType) onEmployeeType;
  final VoidCallback onImage;
  final VoidCallback onDocument;
  final VoidCallback onAdd;

  const NewEmployeeView({
    Key key,
    @required this.addEmployeeViewModel,
    @required this.onFirstName,
    @required this.onLastName,
    @required this.onPhoneNumber,
    @required this.onEmail,
    @required this.onEmployeePosition,
    @required this.onSalary,
    @required this.onEmployeeType,
    @required this.onImage,
    @required this.onDocument,
    @required this.onAdd,
  }) : super(key: key);

//TODO refactor ui and wire methods
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      child: Container(
        width: 380,
        height: 600,
        padding: 65.0.hPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            15.0.vSpace,
            Text(
              'New Employee',
              style: context.headline6,
            ),
            30.0.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.firstNameError,
              labelText: 'first name',
              icon: Icons.person,
              onChanged: onFirstName,
            ),
            15.0.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.lastNameError,
              labelText: 'last name',
              icon: Icons.person,
              onChanged: onLastName,
            ),
            15.0.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.phoneNumberError,
              labelText: 'phone number',
              icon: Icons.phone,
              onChanged: onPhoneNumber,
            ),
            15.0.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.emailError,
              labelText: 'email',
              icon: Icons.email,
              onChanged: onEmail,
            ),
            15.0.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.emailError,
              labelText: 'dob',
              icon: Icons.date_range,
              readOnly: true,
              onChanged: onEmail,
            ),
            15.0.vSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: onImage,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/1.png'),
                  ),
                ),
                10.0.hSpace,
                Text(
                  'Please click the avatar to\nenter employee photo',
                  style: context.caption,
                )
              ],
            ),
            15.0.vSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: InkWell(
                    onTap: onDocument,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.description,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                10.0.hSpace,
                Text(
                  'Please enter the relevant\nemployee document here',
                  style: context.caption,
                )
              ],
            ),
            30.0.vSpace,
            MyActionButton(
              label: 'Add',
              isLoading: addEmployeeViewModel.isAdding,
              onPressed: onAdd,
            ),
            40.0.vSpace,
          ],
        ),
      ),
    );
  }
}
