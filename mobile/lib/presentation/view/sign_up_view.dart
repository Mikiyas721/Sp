import 'package:flutter/material.dart';
import '../model/sign_up_view_model.dart';
import '../widget/my_action_button.dart';
import '../widget/my_text_field.dart';
import '../../common/extensions.dart';

class SignUpView extends StatelessWidget {
  final SignUpViewModel signUpViewModel;
  final void Function(String name) onNameChanged;
  final void Function(String phoneNumber) onPhoneNumberChanged;
  final void Function(String email) onEmailChanged;
  final void Function(String password) onPasswordChanged;
  final VoidCallback onSignUp;

  const SignUpView({
    Key key,
    @required this.signUpViewModel,
    @required this.onNameChanged,
    @required this.onPhoneNumberChanged,
    @required this.onEmailChanged,
    @required this.onPasswordChanged,
    @required this.onSignUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      MyTextField(
        hintText: "Name",
        errorText: signUpViewModel.nameError,
        onChanged: onNameChanged,
      ),
      15.0.vSpace,
      MyTextField(
        hintText: "Phone Number",
        errorText: signUpViewModel.phoneNumberError,
        onChanged: onPhoneNumberChanged,
      ),
      15.0.vSpace,
      MyTextField(
        hintText: "Email",
        errorText: signUpViewModel.emailError,
        onChanged: onEmailChanged,
      ),
      15.0.vSpace,
      MyTextField(
        hintText: "Password",
        errorText: signUpViewModel.passwordError,
        onChanged: onPasswordChanged,
      ),
      20.0.vSpace,
      MyActionButton(
        onClick: onSignUp,
        label: 'Sign Up',
      )
    ]);
  }
}
