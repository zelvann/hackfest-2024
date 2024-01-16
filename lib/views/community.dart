import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Komunitaspg extends StatelessWidget {
  const Komunitaspg({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                          'Filter berdasarkan',
                          style: TextStyle(
                              color: HexColor('#4F4F4F'),
                              fontSize: 15
                          )
                      ),
                      Container(
                          margin: const EdgeInsets.only(bottom: 20),
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
                                    "31 DES 2023",
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
                                  )
                                ),
                                Text(
                                    'Lorem ipsum dolor sit amet consectetur. Quam tempor faucibus quam eget. ',
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
                                          margin: const EdgeInsets.only(left:77,right: 10),
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
            Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Container(
                          margin: const EdgeInsets.only(bottom: 20),
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
                                    "31 DES 2023",
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
                                    'Lorem ipsum dolor sit amet consectetur. Quam tempor faucibus quam eget. ',
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
                                          margin: const EdgeInsets.only(left:77,right: 10),
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
            )
          ]
      )
    );
  }
}