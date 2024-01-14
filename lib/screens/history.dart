import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Historyscreen extends StatelessWidget {
  const Historyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Pencatatan Uang',
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