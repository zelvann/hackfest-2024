import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/button.dart';

class Preloginpg extends StatelessWidget {
  const Preloginpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child:  Image.asset(
                'images/fish_farmer.png',
                width: 317, height: 213
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
                'WELCOME !',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: HexColor('#023047')
                )
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text(
              'Selamat datang di TAMPAN! Aplikasi pintar untuk petani tambak sukses. Tingkatkan produktivitas dan efisiensi bisnis Anda. Masuk sekarang untuk pengalaman luar biasa!',
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  color: Colors.black
              )
            )
          ),
          Buttonwidget(
            label: 'SIGN UP',
            bgColor: HexColor('#023047'),
            fColor: Colors.white,
            isPressed: () {

            },
            isUseshape: true,
          ),
          Buttonwidget(
            label: 'LOG IN',
            bgColor: Colors.white,
            fColor: HexColor('#023047'),
            isPressed: () {

            },
            isUseshape: true,
          )
        ],
      ),
    );
  }
}