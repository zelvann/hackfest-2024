import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/featbutton.dart';
import 'package:tampan/utils/circle.dart';

class Homepg extends StatelessWidget {
  const Homepg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 16,
          right: 15,
          top: 10
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
            "Cuaca",
            style: TextStyle(
                fontSize: 18,
                color: HexColor('#023047')
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 13,left: 10, right: 10),
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [HexColor('#8ECAE6'),HexColor('#023047')],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 7),
                      child: const Text(
                        'Palembang, 12 Jan',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 21),
                      child: const Text(
                        '28° C',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                    'images/icon/sun.png',
                    width: 64, height: 64
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const Text(
                  'Hari ini cerah berawan.',
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Hari ini baik untuk: ',
                      style: TextStyle(
                          fontSize: 12
                      ),
                    ),
                    Text(
                      'MENGURAS AIR',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#FB8500')
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            "Fitur Andalan",
            style: TextStyle(
              fontSize: 20,
              color: HexColor("#023047"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Featurebutton(
                  label: 'Pencatatan Uang',
                  bgColor: Colors.white,
                  fColor: HexColor('#023047'),
                  isPressed: ()  {

                  },
                  isUseshape: true,
                  icon: Icons.class_rounded,
                  iconColor: HexColor('#023047'),
                ),
                Featurebutton(
                  label: 'Identifikasi Ikan',
                  bgColor: Colors.white,
                  fColor: HexColor('#023047'),
                  isPressed: () {

                  },
                  isUseshape: true,
                  imgPath: 'images/icon/identifikasi.png',
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Featurebutton(
                  label: 'Analisa Usaha',
                  bgColor: Colors.white,
                  fColor: HexColor('#023047'),
                  isPressed: () {

                  },
                  isUseshape: true,
                  imgPath: 'images/icon/au.png',
                ),
                Featurebutton(
                  label: 'Jadwal Siklus',
                  bgColor: Colors.white,
                  fColor: HexColor('#023047'),
                  isPressed: () {

                  },
                  isUseshape: true,
                  icon: Icons.cached_rounded,
                  iconColor: HexColor('#219EBC'),
                )
              ],
            ),
          ),
          Text(
            'Ikan Pilihan Anda',
            style: TextStyle(
                fontSize: 18,
                color: HexColor('#023047')
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                Circleutil(margin: EdgeInsets.only(right: 30)),
                Circleutil(margin: EdgeInsets.only(right: 30)),
                Circleutil(margin: EdgeInsets.only(right: 30)),
                Circleutil()
              ],
            ),
          ),
        ],
      ),
    );
  }
}