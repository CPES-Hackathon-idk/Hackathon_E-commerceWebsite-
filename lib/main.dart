import 'package:commerce/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/detailsPage.dart';
import 'pages/homePage.dart';
import 'pages/shoppingPage.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      home: HomePage(),
      // initialRoute: '/',
      routes: {
        // '/': (context) => HomePage(),
        // '/shop': (context) => ShoppingPage(),
        // '/details': (context) => DetailsPage(),
      },
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}