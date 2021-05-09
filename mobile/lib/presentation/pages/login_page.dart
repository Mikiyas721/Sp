import 'package:flutter/material.dart';
import '../../common/extensions.dart';
import '../view/login_view.dart';
import '../model/login_view_model.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login-page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight,
          padding: 20.0.hPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: context.headline1,
              ),
              20.0.vSpace,
              Text(
                "Welcome back",
                style: context.headline6,
              ),
              15.0.vSpace,
//          There is hardcoding below
              LoginView(
                loginViewModel: LoginViewModel(
                    phoneNo: null,
                    phoneNoError: null,
                    password: null,
                    passwordError: null,
                    hasSubmitted: null,
                    isSigningIn: null),
                onPhoneNoChanged: null,
                onPasswordChanged: null,
                onLogin: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
