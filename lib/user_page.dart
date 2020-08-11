import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static const String id = '/user';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'User Page',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
