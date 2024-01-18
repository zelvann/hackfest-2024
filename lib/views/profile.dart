import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Profilepg extends StatelessWidget {
  const Profilepg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child:  Center(
                child: Image.asset(
                  'images/icon/unknown.png',
                  width: 86, height: 86,
                )
            )
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Center(
                child: Text(
                    '"Mari bergabung dengan komunitas TAMPAN!',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: Colors.black
                    )
                )
              )
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
            padding: const EdgeInsets.only(left: 18,right: 18,top: 18),
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
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                      'Bagikan TAMPAN dan bantu para petani tambak menyelesaikan masalah mereka',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Colors.black
                      )
                  )
                ),
                TextButton(
                    onPressed: () {

                    },
                    child: Text(
                        'Bagikan Plantix',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: HexColor('#219EBC')
                        )
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
                      color: Colors.black
                  )
              )
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 18,right: 18,top: 18),
            decoration: BoxDecoration(
                border: Border.all(
                    color: HexColor('#8ECAE6'),
                    width: 0.3
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: const Text(
                      'Kami ingin mendengar pendapat dan saran Anda',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black
                      )
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {

                        },
                        child: Text(
                            'Berikan Tanggapan',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#219EBC')
                            )
                        )
                    )
                  ]
                )
              ]
            )
          )
        ]
      )
    );
  }
}