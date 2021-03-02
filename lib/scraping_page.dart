import 'package:flutter/material.dart';
import 'package:universal_html/driver.dart';

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
          '人気キャンプ場',
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
    for (var i = 1; i < 2; i++) {
      final driver = HtmlDriver();
      await driver.setDocumentFromUri(Uri.parse(url + i.toString()));
      final napSites =
          driver.document.querySelectorAll('div.campsite-result-item');
      print(napSites[0].querySelector('h3').text);
      for (var napSite in napSites) {
        print(napSite.toString());
        _campSitesNamesText.add(Text(napSite.text));
      }
    }
    setState(() {});
  }
}
