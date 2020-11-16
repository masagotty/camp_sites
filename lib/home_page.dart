import 'package:flutter/material.dart';
import 'package:camp_sites/rounded_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'lib/src/icon_with_title.png',
              height: 160,
            ),
            SizedBox(
              height: 120,
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'ログイン',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'Googleでログイン',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
            RoundedButton(
              color: Colors.indigo[300],
              title: '新規登録',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
          ],
        ),
      ),
    );
  }
}
