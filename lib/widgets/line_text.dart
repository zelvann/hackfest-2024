import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/line.dart';

class Linetext extends StatelessWidget {
  const Linetext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const Lineutil(margin: EdgeInsets.only(right: 8)),
          Text(
            'OR',
            style: TextStyle(
                fontSize: 18,
                color: HexColor('#818181')
            )
          ),
          const Lineutil(margin: EdgeInsets.only(left: 8))
        ]
      )
    );
  }
}