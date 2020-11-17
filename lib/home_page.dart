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
            Hero(
              tag: 'logo',
              child: Image.asset(
                'lib/src/icon_with_title.png',
                height: 160,
              ),
            ),
            Container(
              height: 120,
              child: Center(
                child: Text(
                  'あいうえおあいうえお\nあいうえおあいうえおあいうえお',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'ログイン',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/login');
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
                Navigator.pushNamed(context, '/registration');
              },
            ),
          ],
        ),
      ),
    );
  }
}
