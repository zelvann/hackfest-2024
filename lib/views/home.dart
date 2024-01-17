import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/navigator.dart';
import 'package:tampan/utils/soon.dart';
import 'package:tampan/widgets/button.dart';
import 'package:tampan/widgets/feature_button.dart';
import 'package:tampan/views/identification.dart';

class Homepg extends StatelessWidget {
  const Homepg({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(
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
                    )
                ),
                Container(
                    padding: const EdgeInsets.only(top: 13,left: 10, right: 10),
                    margin: const EdgeInsets.only(top: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [HexColor('#8ECAE6'), HexColor('#023047')],
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
                                        'Palembang, 18 Jan',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black
                                        )
                                    )
                                ),
                                Container(
                                    margin: const EdgeInsets.only(bottom: 21),
                                    child: const Text(
                                        '28° C',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black
                                        )
                                    )
                                )
                              ]
                          ),
                          Image.asset(
                              'images/icon/sun.png',
                              width: 64, height: 64
                          )
                        ]
                    )
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
                              )
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                    'Hari ini baik untuk: ',
                                    style: TextStyle(
                                        fontSize: 12
                                    )
                                ),
                                Text(
                                    'MENGURAS AIR',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#FB8500')
                                    )
                                )
                              ]
                          )
                        ]
                    )
                ),
                Text(
                    "Fitur Andalan",
                    style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#023047")
                    )
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)
                                    => Nextpg(
                                        appbar: AppBar(
                                            title: Text(
                                                'Pencatatan Uang',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: HexColor('#023047')
                                                )
                                            )
                                        ),
                                        body: const Soonpg()
                                    ))
                                );
                              },
                              isUseshape: true,
                              icon: Icons.class_rounded,
                              iconColor: HexColor('#023047')
                          ),
                          Featurebutton(
                              label: 'Identifikasi Ikan',
                              bgColor: Colors.white,
                              fColor: HexColor('#023047'),
                              isPressed: ()  {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)
                                    => Nextpg(
                                        appbar: AppBar(
                                            title: Text(
                                                'IDENTIFIKASI IKAN',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: HexColor('#023047')
                                                )
                                            )
                                        ),
                                        body: const Ipg()
                                    ))
                                );
                              },
                              isUseshape: true,
                              imgPath: 'images/icon/identifikasi.png'
                          )
                        ]
                    )
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
                              isPressed: ()  {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)
                                    => Nextpg(
                                        appbar: AppBar(
                                            title: Text(
                                                'Analisis Usaha',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: HexColor('#023047')
                                                )
                                            )
                                        ),
                                        body: const Soonpg()
                                    ))
                                );
                              },
                              isUseshape: true,
                              imgPath: 'images/icon/au.png'
                          ),
                          Featurebutton(
                              label: 'Jadwal Siklus',
                              bgColor: Colors.white,
                              fColor: HexColor('#023047'),
                              isPressed: ()  {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)
                                    => Nextpg(
                                        appbar: AppBar(
                                            title: Text(
                                                'JADWAL SIKLUS',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w800,
                                                    color: HexColor('#023047')
                                                )
                                            )
                                        ),
                                        body: const Soonpg()
                                    ))
                                );
                              },
                              isUseshape: true,
                              icon: Icons.cached_rounded,
                              iconColor: HexColor('#219EBC')
                          )
                        ]
                    )
                ),
                const Text(
                    'Berita Hari Ini',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    )
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Container(
                              padding: const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
                              width: double.infinity,
                              color: Colors.grey[200],
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(bottom: 30),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          'images/bandeng.png',
                                          width: 328, height: 153,
                                        )
                                    ),
                                    Text(
                                        "18 JAN 2023",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: HexColor('#F56F1C')
                                        )
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10,bottom: 5),
                                      child: const Text(
                                          'Tips Panen Bandeng',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black
                                          )
                                      ),
                                    ),
                                    Text(
                                        'Ikan bandeng (Chanos chanos) adalah ikan pangan populer di Asia Tenggara dan Oseania. Bandeng disukai sebagai makanan karena rasanya gurih ...',
                                        style: TextStyle(
                                            color: HexColor('#687083'),
                                            fontSize: 12
                                        )
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 20),
                                        child:  Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                  onPressed: () {

                                                  },
                                                  style: TextButton.styleFrom(
                                                    padding: const EdgeInsets.all(0),

                                                  ),
                                                  child: Text(
                                                      'Baca Selengkapnya',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: HexColor('#0FA95F')
                                                      )
                                                  )
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.only(left:46,right: 10),
                                                  width: 75, height: 22,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          padding: const EdgeInsets.all(5),
                                                          backgroundColor: Colors.grey[200]
                                                      ),
                                                      child: const Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                            Icon(
                                                                Icons.chat_outlined,
                                                                color: Colors.black,
                                                                size: 15
                                                            ),
                                                            Text(
                                                                'Komentar',
                                                                style: TextStyle(
                                                                    fontSize: 8,
                                                                    color: Colors.black
                                                                )
                                                            )
                                                          ]
                                                      )
                                                  )
                                              ),
                                              Container(
                                                  margin: const EdgeInsets.all(0),
                                                  width:75, height: 22,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          padding: const EdgeInsets.all(5),
                                                          backgroundColor: Colors.grey[200]
                                                      ),
                                                      child: const Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: [
                                                            Icon(
                                                                Icons.reply,
                                                                color: Colors.black,
                                                                size: 15
                                                            ),
                                                            Text(
                                                                'Bagikan',
                                                                style: TextStyle(
                                                                    fontSize: 8,
                                                                    color: Colors.black
                                                                )
                                                            )
                                                          ]
                                                      )
                                                  )
                                              )
                                            ]
                                        )
                                    )
                                  ]
                              )
                          )
                        ]
                    )
                ),
                Buttonwidget(
                    label: 'Berita lainnya',
                    bgColor: HexColor('#0D3C53'),
                    fColor: Colors.white,
                    isPressed: () {}
                )
              ]
          )
      )
    );
  }
}