import 'package:flutter/material.dart';
import 'package:sp_web/common/controller/controller_provider.dart';
import 'package:sp_web/modules/admin/presentation/controller/login_controller.dart';
import 'package:sp_web/modules/admin/presentation/models/login_view_model.dart';
import 'package:sp_web/modules/admin/presentation/views/login_view.dart';
import '../../../../common/extensions.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget loginView =
        ViewModelBuilder.withController<LoginViewModel, LoginController>(
            create: () => LoginController(context),
            builder: (context, controller, model) {
              return LoginView(
                loginViewModel: model,
                onPhoneNumberChanged: controller.onPhoneNumberChanged,
                onPasswordChanged: controller.onPasswordChanged,
                onLogin: controller.onLogin,
              );
            });
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return constraints.maxWidth > 742
            ? Row(
                children: [
                  Image.asset(
                    'images/1.png',
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                  (constraints.maxWidth * 0.01).hSpace,
                  loginView
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              )
            : Center(
                child: loginView,
              );
      }),
    );
  }
}
