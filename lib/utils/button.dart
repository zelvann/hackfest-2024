import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Buttonutil extends StatelessWidget {
  final String label;
  final Color bgColor,fColor;
  final VoidCallback isPressed;
  final String? imgPath;
  final bool? isUseshape;

  const Buttonutil({
    Key? key,
    required this.label,
    required this.bgColor,
    required this.fColor,
    required this.isPressed,
    this.imgPath,
    this.isUseshape
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              foregroundColor: fColor,
              shape:  isUseshape != null ?
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color:HexColor('#023047'))
              ) : null
            ),
            onPressed: isPressed,
            child: Text(label),
          ),
        ),
      ],
    );
  }
}