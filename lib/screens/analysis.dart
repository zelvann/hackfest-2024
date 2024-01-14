import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AUscreen extends StatelessWidget {
  const AUscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Analisis Usaha',
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