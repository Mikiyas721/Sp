import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sp_web/presentation/pages/admin_page.dart';
import 'package:sp_web/presentation/pages/client_page.dart';
import 'package:sp_web/presentation/pages/dashboard_page.dart';
import 'package:sp_web/presentation/pages/employees_page.dart';
import 'package:sp_web/presentation/pages/feedback_page.dart';
import 'package:sp_web/presentation/pages/login_page.dart';
import 'package:sp_web/presentation/pages/products_page.dart';

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
          primaryColor: Color(0xFF0080FF),
          textTheme: TextTheme(
            headline6: GoogleFonts.poppins(color: Colors.black, fontSize: 30),
            headline5: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
            caption: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
          )),
    );
  }
}

final routes = {
  '/': (BuildContext context) => LoginPage(),
  '/dashboard': (BuildContext context) => DashboardPage(),
  '/employees': (BuildContext context) => EmployeesPage(),
  '/admins': (BuildContext context) => AdminsPage(),
  '/clients': (BuildContext context) => ClientPage(),
  '/products': (BuildContext context) => ProductsPage(),
  '/feedback': (BuildContext context) => FeedbackPage(),
};
