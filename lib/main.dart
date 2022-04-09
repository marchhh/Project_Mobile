import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_620710689/pages/detail_item_page.dart';
import 'package:project_620710689/pages/home_page.dart';
import 'package:project_620710689/pages/item_list_page.dart';
import 'package:project_620710689/pages/welcome_page.dart';
import 'first_page/login.dart';
import 'first_page/register_page.dart';
import 'first_page/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M-Keycap Shop',
      theme: ThemeData(
          fontFamily: GoogleFonts.prompt().fontFamily,
          primarySwatch: Colors.deepPurple
      ),
      initialRoute: '/home',
      routes: {
        Start.routeName : (context) => Start(),
        LoginPage.routeName : (context) => LoginPage(),
        Register.routeName : (context) => Register(),
        WelcomePage.routeName : (context) => WelcomePage(),
        HomePage.routeName : (context) => HomePage(),
        ItemList.routeName : (context) => ItemList(),
        ItemDetail.routeName : (context) => ItemDetail(),
      },
    );
  }
}