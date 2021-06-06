import 'package:flutter/material.dart';
import 'package:sp_web/common/widgets/border_text_field.dart';
import 'package:sp_web/common/widgets/my_action_button.dart';
import 'package:sp_web/modules/admin/presentation/models/login_view_model.dart';
import '../../../../common/extensions.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String email) onPhoneNumberChanged;
  final void Function(String password) onPasswordChanged;
  final VoidCallback onLogin;

  const LoginView({
    Key key,
    @required this.loginViewModel,
    this.onPhoneNumberChanged,
    this.onPasswordChanged,
    this.onLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      child: Container(
        width: 380,
        height: 450,
        padding: 65.0.hPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: context.headline6,
            ),
            10.0.vSpace,
            Text(
              'Welcome',
              style: context.caption,
            ),
            60.0.vSpace,
            BorderTextField(
              errorMessage: loginViewModel.phoneNumberError,
              labelText: 'phone number',
              icon: Icons.email,
              onChanged: onPhoneNumberChanged,
              keyBoardType: TextInputType.phone,
            ),
            15.0.vSpace,
            BorderTextField(
              errorMessage: loginViewModel.passwordError,
              labelText: 'password',
              icon: Icons.lock,
              obscureText: true,
              onChanged: onPasswordChanged,
            ),
            60.0.vSpace,
            MyActionButton(
              label: 'Login',
              isLoading: loginViewModel.isLoading,
              onPressed: onLogin,
            ),
            40.0.vSpace,
          ],
        ),
      ),
    );
  }
}
