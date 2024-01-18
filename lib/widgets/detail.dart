import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Detailpg extends StatelessWidget {
  final String path,ldate,desc,author;

  const Detailpg({
    super.key,
    required this.path,
    required this.ldate,
    required this.desc,
    required this.author
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Image.asset(
                      path,
                      width: 360, height: 92,
                    )
                ),
                Text(
                    ldate,
                    style: TextStyle(
                        fontSize: 12,
                        color: HexColor('#F56F1C')
                    )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    desc,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        author,
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontStyle: FontStyle.italic
                        )
                    )
                  ]
                )
              ]
          )
      )
    );
  }
}