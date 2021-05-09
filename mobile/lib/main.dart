import 'package:flutter/material.dart';
import './presentation/pages/item_request_page.dart';
import './presentation/pages/login_page.dart';
import './presentation/pages/sign_up_page.dart';
import './presentation/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sp_client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color.fromRGBO(255, 240, 212, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline1: TextStyle(fontSize: 28,),
            headline6: TextStyle(fontSize: 16)),
      ),
      home: HomePage(),
      routes: {
        LoginPage.routeName: (ctx) => LoginPage(),
        SignUpPage.routeName: (ctx) => SignUpPage(),
        ItemRequestPage.routeName: (ctx) => ItemRequestPage(),
        HomePage.routeName: (ctx) => HomePage(),
      },
    );
  }
}
