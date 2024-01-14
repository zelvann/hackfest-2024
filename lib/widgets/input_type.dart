import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Formwidget extends StatelessWidget {
  final String label;
  final String hintText;

  const Formwidget({
    Key? key,
    required this.label,
    required this.hintText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor("#023047")
                )
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 6),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0)
                  ),
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: HexColor('#72706C'),
                    fontSize: 16
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}