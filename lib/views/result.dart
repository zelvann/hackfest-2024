import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class Respg extends StatelessWidget {
  const Respg({
    Key? key,
    required this.image
  }) : super(key: key);
  
  final XFile image;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'GAMBAR IKAN',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: HexColor('#023047')
            )
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 60, top: 10),
              child: Image.file(
                      File(image.path),
                      width: 310, height: 120
                    )
          ),
          Text(
              'DIAGNOSIS',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: HexColor('#023047')
              )
          ),
          Container(
              width: double.infinity,
              height: 260,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: HexColor('#EAF8FF'),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.black)
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        'KONDISI IKAN:',
                        style: TextStyle(
                            fontSize: 18,
                            color: HexColor('#8C8C8C'),
                            fontWeight: FontWeight.w800
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                            'SAKIT',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 52,
                                color: Colors.black
                            )
                        )
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Text(
                                'KETERANGAN :',
                                style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: HexColor('#8C8C8C')
                                )
                            )
                          ),
                          Flexible(
                            child: Text(
                                'TERJANGKIT BAKTERI',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                  color: HexColor('#FB8500')
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