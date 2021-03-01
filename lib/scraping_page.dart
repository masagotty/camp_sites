import 'package:flutter/material.dart';
import 'package:universal_html/driver.dart';
import 'package:camp_sites/rounded_button.dart';

class ScrapingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CanpSitesNumberPage(),
    );
  }
}

class CanpSitesNumberPage extends StatefulWidget {
  @override
  _CanpSitesNumberPageState createState() => _CanpSitesNumberPageState();
}

class _CanpSitesNumberPageState extends State<CanpSitesNumberPage> {
  // 最終的にはBaseURLにAPIから取得したユーザーIDを渡せば良さそう
  static const url = 'https://www.nap-camp.com/list';

  String _campSitesNumber = '';

  @override
  void initState() {
    super.initState();

    _getCampSitesNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '全国のキャンプ場の数',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: _campSitesNumber.isNotEmpty
            ? RoundedButton(
                color: Colors.indigo,
                title: _campSitesNumber,
                onPressedCallback: () {},
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        onPressed: _getCampSitesNumber,
      ),
    );
  }

  _getCampSitesNumber() async {
    final driver = HtmlDriver();
    await driver.setDocumentFromUri(Uri.parse(url));
    setState(() {
      _campSitesNumber = driver.document
          .querySelector(
              '#app > div.main > div > div > div.g-container.main > div.body > div.head > h1 > span')
          .text;
    });
  }
}
