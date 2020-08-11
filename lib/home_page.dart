import 'package:flutter/material.dart';

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
              child: Center(
                child: Text(
                  category + 'の中身',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
