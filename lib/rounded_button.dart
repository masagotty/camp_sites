import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    @required this.color,
    @required this.title,
    @required this.onPressedCallback,
  });

  final Color color;
  final String title;
  final Function onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressedCallback,
          minWidth: 200.0,
          height: 56.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
