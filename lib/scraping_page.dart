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
  static const url = 'https://www.nap-camp.com/list?sortId=21&pageId=';
  List<Text> _campSitesNamesText = [];

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
          '全国のキャンプ場の数です',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: _campSitesNamesText.isNotEmpty
            ? SingleChildScrollView(
                child: Column(
                  children: _campSitesNamesText,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
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
    _campSitesNamesText = [];
    setState(() {});
    for (var i = 1; i < 11; i++) {
      final driver = HtmlDriver();
      await driver.setDocumentFromUri(Uri.parse(url + i.toString()));
      final elements = driver.document.querySelectorAll('div.header-body > h3');
      for (var elem in elements) {
        _campSitesNamesText.add(Text(elem.text));
      }
    }
    setState(() {});
  }
}
