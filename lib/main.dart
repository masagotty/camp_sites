import 'package:flutter/material.dart';
import 'package:camp_sites/home_page.dart';
import 'package:camp_sites/detail_page.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_data.dart';

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
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: HomePage(),
            ),
        '/detail': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: DetailPage(),
            ),
        '/user': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: DetailPage(),
            ),
      },
      // onGenerateRoute: (RouteSettings settings) {
      //   switch (settings.name) {
      //     case '/':
      //       return MaterialPageRoute<void>(
      //         builder: (_) => HomePage(),
      //       );
      //     case '/detail':
      //       return MaterialPageRoute<void>(
      //         builder: (_) => DetailPage(),
      //       );
      //     case '/user':
      //       return MaterialPageRoute<void>(
      //         builder: (_) => UserPage(),
      //       );
      //     default:
      //       throw UnimplementedError('Undefined route ${settings.name}');
      //   }
      // },
    );
  }
}
