import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Color spashColor;
  final Function onPressed;

  const LoginButton({
    Key key,
    this.backgroundColor,
    this.text,
    this.textColor,
    this.spashColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      //hoverColor: Colors.grey,
      splashColor: spashColor,
      elevation: 2,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      padding: EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: new TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w800,
              color: textColor,
            ),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
