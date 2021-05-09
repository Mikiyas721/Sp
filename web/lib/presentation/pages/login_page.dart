import 'package:flutter/material.dart';
import 'package:sp_web/presentation/models/login_view_model.dart';
import 'package:sp_web/presentation/views/login_view.dart';
import '../../common/extensions.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  LoginView(
                    loginViewModel: LoginViewModel(),
                    onLogin: () {
                      Navigator.pushNamed(context, '/homePage');
                    },
                  )
                ],
                crossAxisAlignment: CrossAxisAlignment.center,
              )
            : Center(
                child: LoginView(
                  loginViewModel: LoginViewModel(),
                  onLogin: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                ),
              );
      }),
    );
  }
}
