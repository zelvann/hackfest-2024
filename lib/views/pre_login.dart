import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/utils/navigator.dart';
import 'package:tampan/views/login_form.dart';
import 'package:tampan/views/register_form.dart';
import 'package:tampan/widgets/button.dart';

class Preloginpg extends StatelessWidget {
  const Preloginpg({super.key});
  static Color color = HexColor('#023047');

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
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: color
                )
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text(
              'Selamat datang di TAMPAN! Aplikasi pintar untuk petani tambak sukses. Tingkatkan produktivitas dan efisiensi bisnis Anda. Masuk sekarang untuk pengalaman luar biasa!',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black
              )
            )
          ),
          Buttonwidget(
            label: 'SIGN UP',
            bgColor: color,
            fColor: Colors.white,
            isPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)
                  => Nextpg(
                      appbar: const Appbarform(),
                      body: Registerpg()
                  ))
              );
            },
            isUseshape: true,
            margin: const EdgeInsets.only(bottom: 8),
          ),
          Buttonwidget(
            label: 'LOG IN',
            bgColor: Colors.white,
            fColor: color,
            isPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)
                  => const Nextpg(
                      appbar: Appbarform(),
                      body: Loginpg()
                  ))
              );
            },
            isUseshape: true
          )
        ]
      )
    );
  }
}