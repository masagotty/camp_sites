import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camp_sites/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampSites',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 81, 1),
        primaryColor: Color.fromRGBO(216, 27, 96, 1),
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
