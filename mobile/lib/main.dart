import 'package:flutter/material.dart';
import 'package:sp_client/injection.dart';
import 'package:sp_client/modules/customer/presentation/pages/login_page.dart';
import 'package:sp_client/modules/product/presentation/pages/products_by_category_page.dart';
import 'modules/product/presentation/pages/item_request_page.dart';
import 'modules/customer/presentation/pages/sign_up_page.dart';
import 'modules/product/presentation/pages/home_page.dart';
import 'modules/product/presentation/pages/product_details_page.dart';

void main(){
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sp_client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color.fromRGBO(255, 240, 212, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 16)),
      ),
      initialRoute: LoginPage.routeName,
      routes: routes,
    );
  }
}

final routes = {
  LoginPage.routeName: (ctx) => LoginPage(),
  SignUpPage.routeName: (ctx) => SignUpPage(),
  ItemRequestPage.routeName: (ctx) => ItemRequestPage(),
  HomePage.routeName: (ctx) => HomePage(),
  ProductDetailsPage.routeName: (ctx) => ProductDetailsPage(),
  ProductsByCategoryPage.routeName: (ctx) => ProductsByCategoryPage(),
};
