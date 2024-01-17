import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/views/identification.dart';
import 'package:tampan/views/result.dart';

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
      body: const Ipg(),
    );
  }
}

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key});

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
      body: const Respg(),
    );
  }
}