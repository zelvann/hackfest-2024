import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/button.dart';

class Komunitaspg extends StatelessWidget {
  const Komunitaspg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Filter berdasarkan',
            style: TextStyle(
              color: HexColor('#4F4F4F'),
              fontSize: 15
            )
          )
        ]
      )
    );
  }
}