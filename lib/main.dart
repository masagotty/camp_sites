import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampSites',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: Scaffold(
        body: Center(
            child: Text(
          'CampSites',
          style: TextStyle(
            fontSize: 64.0,
          ),
        )),
      ),
    );
  }
}
