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
              height: 120,
            ),
            SizedBox(
              height: 120,
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'Login',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'Login With なんちゃら',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
            RoundedButton(
              color: Colors.indigo[300],
              title: 'Registration',
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
