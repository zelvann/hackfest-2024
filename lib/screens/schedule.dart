import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Schedulescreen extends StatelessWidget {
  const Schedulescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JADWAL SIKLUS',
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