import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Appbartampan extends StatelessWidget implements PreferredSizeWidget {
  const Appbartampan({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'images/logo.png',
            height: 34,
            width: 34,
          ),
          const SizedBox(width: 9),
          Text(
            'TAMPAN',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
              color: HexColor("#023047"),
            ),
          )
        ],
      ),
    );
  }
}