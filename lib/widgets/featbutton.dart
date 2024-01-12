import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Featurebutton extends StatelessWidget {
  final String label;
  final Color bgColor, fColor;
  final VoidCallback isPressed;
  final String? imgPath;
  final bool? isUseshape;
  final IconData? icon;
  final Color? iconColor;

  const Featurebutton({
    Key? key,
    required this.label,
    required this.bgColor,
    required this.fColor,
    required this.isPressed,
    this.imgPath,
    this.isUseshape,
    this.icon,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 180,
            height: 75,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                foregroundColor: fColor,
                shape: isUseshape != null
                    ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: HexColor('#023047')),
                ) : null,
              ),
              onPressed: isPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (imgPath != null || icon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: imgPath != null
                          ? Image.asset(
                        imgPath!,
                        width: 15,
                        height: 15,
                      ) : Icon(icon, color: iconColor),
                    ),
                  Flexible(
                    child: Text(
                      label,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}