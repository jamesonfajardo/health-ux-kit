import 'package:flutter/material.dart';

// pages
import 'package:testapp/landing_page.dart';
import 'package:testapp/signin_page.dart';
import 'package:testapp/home_page.dart';

void main() => runApp(Hitachi());

class Hitachi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // disable debug banner

      // page routes
      routes: {
        '/': (context) => LandingPage(),
        '/signin': (context) => SignIn(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
