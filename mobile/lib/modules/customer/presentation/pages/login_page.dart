import 'package:flutter/material.dart';
import '../../../../common/extensions.dart';
import '../views/login_view.dart';
import '../models/login_view_model.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/login-page";

  void registerHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: context.screenHeight - context.paddingTop,
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
                "Welcome",
                style: context.headline6,
              ),
              15.0.vSpace,
//          There is hardcoding below
              LoginView(
                loginViewModel: LoginViewModel(
                    phoneNumber: null,
                    phoneNumberError: null,
                    password: null,
                    passwordError: null,
                    hasSubmitted: null,
                    isLoading: null),
                onPhoneNoChanged: null,
                onPasswordChanged: null,
                onLogin: null,
              ),
              15.0.vSpace,
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: registerHandler,
                  child: Text("Register"),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
