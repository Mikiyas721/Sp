import 'package:flutter/material.dart';
import '../../../../presentation/widget/my_action_button.dart';
import '../models/login_view_model.dart';
import '../../../../presentation/widget/my_text_field.dart';
import '../../../../common/extensions.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String phoneNo) onPhoneNoChanged;
  final void Function(String password) onPasswordChanged;
  final VoidCallback onLogin;

  const LoginView(
      {Key key,
      @required this.loginViewModel,
      @required this.onPhoneNoChanged,
      @required this.onPasswordChanged,
      @required this.onLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(
          hintText: "Phone Number",
          errorText: loginViewModel.phoneNumberError,
          onChanged: onPhoneNoChanged,
        ),
        15.0.vSpace,
        MyTextField(
          hintText: "Password",
          errorText: loginViewModel.passwordError,
          onChanged: onPasswordChanged,
        ),
        20.0.vSpace,
        MyActionButton(
          label: 'Login',
          onClick: onLogin,
        )
      ],
    );
  }
}