import 'package:bmi_calculator/components/bottom_buttom_widget.dart';
import 'package:bmi_calculator/components/reusable_card_widget.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultsPAge extends StatelessWidget {
  const ResultsPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calulador IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Seu resultado',
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveColorCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal'),
                  Text('18.3'),
                  Text(
                    'Sdsfgdshfgjhdslgjkhdsgjkdfshghfdsgjk',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'RECALCULAR')
        ],
      ),
    );
  }
}
