import 'package:flutter/material.dart';

class Circleutil extends StatelessWidget {
  final EdgeInsets? margin;

  const Circleutil({
    super.key,
    this.margin
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0.0),
      child: Image.asset(
        'images/icon/circle.png',
        height: 64, width: 64
      )
    );
  }
}