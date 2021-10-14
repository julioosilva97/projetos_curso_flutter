import 'package:flutter/material.dart';

import '../constants.dart';

class CardContentWidget extends StatelessWidget {
  final IconData icon;
  final String description;

  const CardContentWidget({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          description,
          style: kDescriptionStyle,
        )
      ],
    );
  }
}
