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
            width: 34
          ),
          const SizedBox(width: 9),
          Text(
            'TAMPAN',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              fontFamily: 'Poppins',
              color: HexColor("#023047")
            ),
          )
        ],
      ),
    );
  }
}

class Appbarform extends StatelessWidget implements PreferredSizeWidget {
  const Appbarform({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              height: 34,
              width: 34
            ),
            const SizedBox(height: 10),
            Text(
              'TAMPAN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                fontFamily: 'Poppins',
                color: HexColor("#023047")
              ),
            )
          ],
        ),
      ),
    );
  }
}