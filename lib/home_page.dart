import 'package:flutter/material.dart';
import 'package:camp_sites/rounded_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:camp_sites/user_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> _handleSignIn() async {
    GoogleSignInAccount googleCurrentUser = _googleSignIn.currentUser;
    try {
      // _googleSignIn.signInSilentlyがエラーを吐くのでいったん暫定的にコメントアウト
      // if (googleCurrentUser == null)
      //   googleCurrentUser = await _googleSignIn.signInSilently(
      //     suppressErrors: false,
      //   );
      if (googleCurrentUser == null)
        googleCurrentUser = await _googleSignIn.signIn();
      if (googleCurrentUser == null) return null;

      GoogleSignInAuthentication googleAuth =
          await googleCurrentUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final User user = (await _auth.signInWithCredential(credential)).user;
      print("signed in " + user.displayName);

      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  void transitionNextPage(User user) {
    if (user == null) return;

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => UserPage(userData: user)));
  }

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
                _handleSignIn()
                    .then((User user) => transitionNextPage(user))
                    .catchError((e) => print(e));
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
            RoundedButton(
              color: Colors.indigo,
              title: '一覧ページへ',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/sites');
              },
            ),
            RoundedButton(
              color: Colors.indigo,
              title: 'スクレイピングページへ',
              onPressedCallback: () {
                //Go to login screen.
                Navigator.pushNamed(context, '/scraping');
              },
            ),
          ],
        ),
      ),
    );
  }
}
