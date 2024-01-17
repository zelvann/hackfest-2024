import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Buttonwidget extends StatelessWidget {
  final String label;
  final Color bgColor, fColor;
  final VoidCallback isPressed;
  final String? imgPath;
  final bool? isUseshape;
  final IconData? icon;
  final Color? iconColor;
  final EdgeInsets? margin;

  const Buttonwidget({
    Key? key,
    required this.label,
    required this.bgColor,
    required this.fColor,
    required this.isPressed,
    this.imgPath,
    this.isUseshape,
    this.icon,
    this.iconColor,
    this.margin
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      padding: const EdgeInsets.symmetric(horizontal: 35),
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              foregroundColor: fColor,
              shape: isUseshape != null
                  ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: HexColor('#023047'))
              ) : null
          ),
          onPressed: isPressed,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imgPath != null || icon != null)
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: imgPath != null ?
                      Image.asset(
                        imgPath!,
                        width: 15,height: 15,
                      ) : Icon(icon, color: iconColor)
                  ),
                Text(label)
              ]
          )
      )
    );
  }
}