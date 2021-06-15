import 'package:flutter/material.dart';
import 'package:sp_client/common/controller/controller_provider.dart';
import 'package:sp_client/modules/customer/presentation/controller/login_controller.dart';
import '../../../../common/extensions.dart';
import '../views/login_view.dart';
import '../models/login_view_model.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = "/loginPage";

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
              ViewModelBuilder.withController<LoginViewModel, LoginController>(
                  create: () => LoginController(context),
                  builder: (context, controller, model) {
                    return LoginView(
                      loginViewModel: model,
                      onPhoneNoChanged: controller.onPhoneNumberChanged,
                      onPasswordChanged: controller.onPasswordChanged,
                      onLogin: controller.onLogin,
                    );
                  }),
              15.0.vSpace,
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
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
