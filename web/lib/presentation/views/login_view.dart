import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/login_view_model.dart';
import 'package:sp_web/presentation/widgets/border_text_field.dart';
import 'package:sp_web/presentation/widgets/my_action_button.dart';
import '../../common/extensions.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel loginViewModel;
  final void Function(String email) onEmailChanged;
  final void Function(String password) onPasswordChanged;
  final VoidCallback onLogin;

  const LoginView({
    Key key,
    @required this.loginViewModel,
    this.onEmailChanged,
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
        padding: 65.hPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: context.headline6,
            ),
            10.vSpace,
            Text(
              'Welcome',
              style: context.caption,
            ),
            60.vSpace,
            BorderTextField(
              errorMessage: loginViewModel.emailError,
              labelText: 'email',
              hintText: 'ABC123@gmail.com',
              icon: Icons.email,
              onChanged: onEmailChanged,
            ),
            15.vSpace,
            BorderTextField(
              errorMessage: loginViewModel.passwordError,
              labelText: 'password',
              icon: Icons.lock,
              obscureText: true,
              onChanged: onPasswordChanged,
            ),
            60.vSpace,
            MyActionButton(
              label: 'Login',
              isLoading: false,
              onPressed: onLogin,
            ),
            40.vSpace,
          ],
        ),
      ),
    );
  }
}
