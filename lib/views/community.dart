import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/news.dart';

class Komunitaspg extends StatelessWidget {
  const Komunitaspg({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
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
                    ]
                )
            ),
            const Newscontainer(
              path: "images/bandeng.png",
              date: "18 JAN 2024",
              title: "Tips Panen Bandeng",
              desc: "Ikan bandeng (Chanos chanos) adalah ikan pangan populer di Asia Tenggara dan Oseania. Bandeng disukai sebagai makanan karena rasanya gurih ...",
            ),
            const Newscontainer(
                path: "images/ikan_terkena_bakteri.png",
                date: "17 JAN 2024",
                title: "Yuk kenali Penyakit Ikan",
                desc: "Halo rekan-rekan yang hebat di dunia budidaya ikan tambak! Kali ini, mari kita berbincang santai namun serius sejenak mengenai satu aspek krusial dalam usaha kita ini, yaitu kesehatan ikan. Sebagaimana ...",
            )
          ]
      )
    );
  }
}