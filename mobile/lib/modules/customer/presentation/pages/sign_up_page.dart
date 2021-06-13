import 'package:flutter/material.dart';
import '../models/sign_up_view_model.dart';
import '../views/sign_up_view.dart';
import '../../../../common/extensions.dart';

class SignUpPage extends StatelessWidget {
  static const String routeName = "sign-up-page";

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
                'Create your account',
                style: context.headline1,
              ),
              20.0.vSpace,
              Text(
                'Make product request and suggestion with your free account',
                style: context.headline6,
              ),
              15.0.vSpace,
              SignUpView(
                signUpViewModel: SignUpViewModel(
                  name: null,
                  nameError: null,
                  phoneNumber: null,
                  phoneNumberError: null,
                  email: null,
                  emailError: null,
                  password: null,
                  passwordError: null,
                  hasSubmitted: null,
                  isSigningIn: null,
                ),
                onNameChanged: null,
                onPhoneNumberChanged: null,
                onEmailChanged: null,
                onPasswordChanged: null,
                onSignUp: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
