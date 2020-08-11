import 'package:flutter/material.dart';
import 'package:camp_sites/detail_page.dart';
import 'package:camp_sites/user_page.dart';

class HomePage extends StatelessWidget {
  final categories = ['一覧', 'お気に入り'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Camp Sites'),
          bottom: TabBar(
            isScrollable: true,
            tabs: categories.map(
              (String category) {
                return Tab(text: category);
              },
            ).toList(),
          ),
        ),
        body: TabBarView(
          children: categories.map((String category) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    child: Text(
                      'Go to Detail Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/user');
                    },
                    child: Text(
                      'Go to User Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Text(
                    category + 'の中身',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
