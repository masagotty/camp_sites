import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:camp_sites/home_page.dart';
import 'package:camp_sites/detail_page.dart';
import 'package:camp_sites/user_page.dart';

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
        // brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        fontFamily: 'NotoSansJP-Regular',
      ),
      // home: HomePage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute<void>(
              builder: (_) => HomePage(),
            );
          case '/detail':
            return MaterialPageRoute<void>(
              builder: (_) => DetailPage(),
            );
          case '/user':
            return MaterialPageRoute<void>(
              builder: (_) => UserPage(),
            );
          default:
            throw UnimplementedError('Undefined route ${settings.name}');
        }
      },
    );
  }
}
