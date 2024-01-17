import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Newscontainer extends StatelessWidget {
  final String path, date, title, desc;
  final VoidCallback? to;

  const Newscontainer({
    super.key,
    required this.path,
    required this.date,
    required this.title,
    required this.desc,
    this.to
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                              path,
                              width: 328, height: 153,
                            )
                        ),
                        Text(
                            date,
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#F56F1C')
                            )
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Text(
                              title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                              )
                          ),
                        ),
                        Text(
                            desc,
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
                                      onPressed: to,
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(0)
                                      ),
                                      child: Text(
                                          'Baca Selengkapnya',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: HexColor('#0FA95F')
                                          )
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(left:27,right: 10),
                                      width: 90, height: 40,
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
                                                    size: 16
                                                ),
                                                Text(
                                                    'Komentar',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black
                                                    )
                                                )
                                              ]
                                          )
                                      )
                                  ),
                                  Container(
                                      margin: const EdgeInsets.all(0),
                                      width:90, height: 40,
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
                                                    size: 16
                                                ),
                                                Text(
                                                    'Bagikan',
                                                    style: TextStyle(
                                                        fontSize: 10,
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
    );
  }
}