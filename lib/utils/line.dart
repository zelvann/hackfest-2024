import 'package:flutter/material.dart';

class Lineutil extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const Lineutil({
    super.key,
    this.margin,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: 150,
      height: 1,
      margin: margin ?? const EdgeInsets.all(0.0),
      padding: padding ?? const EdgeInsets.all(0.0)
    );
  }
}