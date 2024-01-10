import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(const Appbartampan());

class Appbartampan extends StatelessWidget {
  const Appbartampan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Image.asset('images/logo.png',height: 34,width: 34),
              const SizedBox(width: 9),
              Text(
                'TAMPAN',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins',
                  color: HexColor("#023047"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}