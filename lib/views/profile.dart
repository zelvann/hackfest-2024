import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/button.dart';

class Profilepg extends StatelessWidget {
  const Profilepg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Image.asset(
                    'images/icon/unknown.png',
                    width: 86, height: 86
                )
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.symmetric(horizontal: 105),
                child: Buttonwidget(
                    label: 'Masuk',
                    bgColor: Colors.white,
                    fColor: HexColor('#219EBC'),
                    isUseshape: true,
                    isPressed: () {

                    }
                )
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                    '"Mari bergabung dengan komunitas TAMPAN!',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black
                    )
                )
              )
            ]
          ),
          Container(
            width: double.infinity, height: 50,
            padding: const EdgeInsets.all(15),
            color: HexColor('#8ECAE6'),
            child: const Text(
              'Tebar Benih Bersama!',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                color: Colors.black
              )
            )
          ),
          Container(
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: HexColor('#8ECAE6'),
                  width: 0.3
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Bagikan TAMPAN dan bantu para petani tambak menyelesaikan masalah mereka',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Colors.black
                  )
                ),
                const SizedBox(height: 15),
                Text(
                  'Bagikan Plantix',
                  style: TextStyle(
                    color: HexColor('#219EBC'),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700
                  )
                )
              ]
            )
          ),
          Container(
              width: double.infinity, height: 50,
              padding: const EdgeInsets.all(15),
              color: HexColor('#8ECAE6'),
              child: const Text(
                  'Bagaimana pengalaman Anda Pakai TAMPAN?',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.black
                  )
              )
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                border: Border.all(
                    color: HexColor('#8ECAE6'),
                    width: 0.3
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'Kami ingin mendengar pendapat dan saran Anda',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Colors.black
                    )
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(left: 229),
                  child: Text(
                    'Berikan Tanggapan',
                    style: TextStyle(
                        color: HexColor('#219EBC'),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700
                    )
                  )
                )
              ]
            )
          )
        ]
      )
    );
  }
}