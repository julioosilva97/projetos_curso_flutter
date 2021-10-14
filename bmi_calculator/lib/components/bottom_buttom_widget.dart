import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  const BottomButtonWidget({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}
