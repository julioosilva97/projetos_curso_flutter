import 'package:flutter/material.dart';

class RoundedButtonWidget extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final String text;

  const RoundedButtonWidget(
      {Key key, @required this.onPressed, @required this.color, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
