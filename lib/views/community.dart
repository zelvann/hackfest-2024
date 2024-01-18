import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/navigator.dart';
import 'package:tampan/widgets/button.dart';
import 'package:tampan/widgets/detail.dart';
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
                      SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Buttonwidget(
                                label: 'Bandeng',
                                bgColor: HexColor('#E5E5E5'),
                                fColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                isPressed: () {},
                                width: 130,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Buttonwidget(
                                label: 'Lele',
                                bgColor: HexColor('#E5E5E5'),
                                fColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                isPressed: () {},
                                width: 95 ,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Buttonwidget(
                                label: 'Udang',
                                bgColor: HexColor('#E5E5E5'),
                                fColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                isPressed: () {},
                                width: 115,
                                margin: const EdgeInsets.only(right: 5),
                              ),
                              Buttonwidget(
                                label: 'Mujaer',
                                bgColor: HexColor('#E5E5E5'),
                                fColor: Colors.black,
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                isPressed: () {},
                                width: 115,
                                margin: const EdgeInsets.only(right: 5),
                              )
                            ]
                          )
                        )
                      )
                    ]
                )
            ),
            Newscontainer(
              path: "images/bandeng.png",
              date: "18 JAN 2024",
              title: "Tips Panen Bandeng",
              desc: "Ikan bandeng (Chanos chanos) adalah ikan pangan populer di Asia Tenggara dan Oseania. Bandeng disukai sebagai makanan karena rasanya gurih ...",
              to: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)
                    => Nextpg(
                        appbar: AppBar(
                          title: Text(
                              'Tips Panen Bandeng',
                              style: TextStyle(
                                  color: HexColor('#023047')
                              )
                          )
                        ),
                        body: const Detailpg(
                          path: 'images/bandeng.png',
                          ldate: "Sidoarjo, 18 JAN 2024",
                          desc: 'Ikan bandeng (Chanos chanos) adalah ikan pangan populer di Asia Tenggara dan Oseania. Bandeng disukai sebagai makanan karena rasanya gurih, rasa daging netral (tidak asin seperti ikan laut) dan tidak mudah hancur jika dimasak. Dari sisi harga, bandeng termasuk ikan kelas menengah ke atas. Karena faktor tersebut, banyak masyarakat Indonesia yang melihat peluang bisnis untuk melakukan budidaya ikan bandeng ini. Namun banyak dari mereka yang masih belum memahami bagaimana cara melakukan budidaya ikan bandeng, terutama cara memanen ikan bandeng tersebut dengan benar. Berikut ini tips untuk melakukan panen ikan bandeng hasil budidaya:\n\n'
                              '1. Pilih waktu yang tepat untuk memanen ikan bandeng. Biasanya, ikan bandeng dapat dipanen setelah mencapai ukuran yang diinginkan, umumnya sekitar 20-30 cm atau lebih. Pilih waktu pagi atau sore hari untuk meminimalkan stres pada ikan.\n\n'
                              '2. Gunakan alat yang sesuai untuk memanen ikan bandeng. Jaring atau alat penangkap ikan yang dirancang khusus untuk jenis ikan ini akan membantu meminimalkan cedera pada ikan dan mempermudah proses panen.\n\n'
                              '3. Pastikan kondisi lingkungan sekitar ketika memanen ikan. Hindari memanen ikan saat cuaca ekstrem atau kondisi air yang buruk. Hal ini dapat menyebabkan stres pada ikan dan mengurangi kualitas hasil panen.\n\n'
                              '4. Sebelum memanen, periksa kesehatan ikan secara keseluruhan. Hindari memanen ikan yang terlihat sakit atau memiliki gejala penyakit. Panen hanya ikan yang sehat untuk memastikan kualitas dan keamanan hasil panen.\n\n'
                              '5. Pastikan kualitas air di lokasi budidaya tetap baik selama proses panen. Air yang bersih dan baik akan membantu menjaga kualitas ikan bandeng dan mencegah kontaminasi yang dapat mempengaruhi hasil panen.\n\n'
                              '6. Selama proses panen, jaga kebersihan baik dari segi peralatan maupun lingkungan sekitar. Hindari mencampur ikan yang telah dipanen dengan ikan yang masih dalam proses pertumbuhan.\n\n'
                              '7. Saat memanen ikan, hindari menangani ikan secara kasar. Gunakan peralatan yang tepat dan pastikan ikan ditangani dengan hati-hati untuk menghindari cedera atau kerusakan pada tubuh ikan.\n\n'
                              '8. Pada tahap panen, pisahkan ikan berdasarkan ukuran untuk memudahkan pengolahan dan pemasaran. Ini dapat membantu meningkatkan efisiensi dan nilai jual hasil panen.\n\n'
                              'Dengan mengikuti tips ini, diharapkan para petani tambak dapat memanen ikan bandeng dengan efisien dan menghasilkan ikan berkualitas tinggi. Selalu perhatikan prinsip-prinsip budidaya yang berkelanjutan untuk menjaga keberlanjutan sumber daya perairan.\n\n'
                              '- Salam dari Komunitas Budidaya Bandeng Indonesia -',
                          author: "Jaelani Abidin",
                        )
                    ))
                );
              }
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