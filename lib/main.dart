import 'package:flutter/material.dart';
import 'package:camp_sites/home_page.dart';
import 'package:camp_sites/detail_page.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_data.dart';
import 'package:camp_sites/sites_page.dart';
import 'package:camp_sites/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:camp_sites/registration_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampSites',
      theme: ThemeData(
        // brightness: Brightness.dark,23
        primarySwatch: Colors.indigo,
        // fontFamily: 'NotoSansJP-Regular',
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: HomePage(),
            ),
        '/login': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: LoginPage(),
            ),
        '/registration': (BuildContext context) =>
            ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: RegistrationPage(),
            ),
        '/sites': (BuildContext context) => ChangeNotifierProvider<SiteData>(
              create: (context) => SiteData(),
              child: SitesPage(),
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
    );
  }
}
