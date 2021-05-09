import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp_web/presentation/pages/home_page.dart';
import 'package:sp_web/presentation/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: '/',
      theme: ThemeData(
          textTheme: TextTheme(
        headline6: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
        caption: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
      )),
    );
  }
}

final routes = {
  '/': (BuildContext context) => LoginPage(),
  '/homePage': (BuildContext context) => HomePage(),
};
