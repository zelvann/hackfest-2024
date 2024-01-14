import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Iscreen extends StatelessWidget {
  const Iscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'IDENTIFIKASI IKAN',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: HexColor('#023047')
              )
          )
      ),
      body: null,
    );
  }
}