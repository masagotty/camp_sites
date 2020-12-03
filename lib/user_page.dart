import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:camp_sites/rounded_button.dart';

class UserPage extends StatefulWidget {
  UserPage({
    @required this.userData,
  });

  final User userData;
  static const String id = '/user';

  @override
  _UserPageState createState() => _UserPageState(userData);
}

class _UserPageState extends State<UserPage> {
  User userData;
  // String name = "No Name";
  String email;
  String photoURL;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  _UserPageState(User userData) {
    this.userData = userData;
    // this.name = userData.displayName;
    this.email = userData.email;
    this.photoURL = userData.photoURL;
  }

  Future<void> _handleSignOut() async {
    await FirebaseAuth.instance.signOut();
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      print(e);
    }
    Navigator.popAndPushNamed(context, '/');
  }

  @override
  void initState() {
    print('cueerntUser: $userData');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              photoURL != null
                  ? Image.network(this.photoURL)
                  : Text('No Image'),
              // Text(
              //   this.name,
              //   style: TextStyle(
              //     fontSize: 24,
              //   ),
              // ),
              Text(
                this.email,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              RoundedButton(
                color: Colors.indigo,
                title: 'ログアウト',
                onPressedCallback: () {
                  //Go to login screen.
                  _handleSignOut();
                },
              ),
            ]),
      ),
    );
  }
}
