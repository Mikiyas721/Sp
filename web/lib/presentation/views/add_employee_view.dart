import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/add_employee_view_model.dart';
import 'package:sp_web/presentation/widgets/border_text_field.dart';
import 'package:sp_web/presentation/widgets/my_action_button.dart';
import '../../common/extensions.dart';

class AddEmployeeView extends StatelessWidget {
  final AddEmployeeViewModel addEmployeeViewModel;
  final void Function(String firstName) onFirstName;
  final void Function(String lastName) onLastName;
  final void Function(String phoneNumber) onPhoneNumberName;
  final void Function(String email) onEmailName;
  final void Function(String dob) onDobName;
  final VoidCallback onImage;
  final VoidCallback onDocument;
  final VoidCallback onAdd;

  const AddEmployeeView({
    Key key,
    @required this.addEmployeeViewModel,
    @required this.onFirstName,
    @required this.onLastName,
    @required this.onPhoneNumberName,
    @required this.onEmailName,
    @required this.onDobName,
    @required this.onImage,
    @required this.onDocument,
    @required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      child: Container(
        width: 380,
        height: 600,
        padding: 65.hPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            15.vSpace,
            Text(
              'New Employee',
              style: context.headline6,
            ),
            30.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.firstNameError,
              labelText: 'first name',
              icon: Icons.person,
              onChanged: onFirstName,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.lastNameError,
              labelText: 'last name',
              icon: Icons.person,
              onChanged: onLastName,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.phoneNumberError,
              labelText: 'phone number',
              icon: Icons.phone,
              onChanged: onPhoneNumberName,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.emailError,
              labelText: 'email',
              icon: Icons.email,
              onChanged: onEmailName,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: addEmployeeViewModel.emailError,
              labelText: 'dob',
              icon: Icons.date_range,
              readOnly: true,
              onChanged: onEmailName,
            ),
            15.vSpace,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: onImage,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/1.png'),
                  ),
                ),
                10.hSpace,
                Text(
                  'Please click the avatar to\nenter employee photo',
                  style: context.caption,
                )
              ],
            ),
            15.vSpace,
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
                10.hSpace,
                Text(
                  'Please enter the relevant\nemployee document here',
                  style: context.caption,
                )
              ],
            ),
            30.vSpace,
            MyActionButton(
              label: 'Add',
              isLoading: false,
              onPressed: onAdd,
            ),
            40.vSpace,
          ],
        ),
      ),
    );
  }
}
