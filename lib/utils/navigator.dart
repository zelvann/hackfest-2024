import 'package:flutter/material.dart';

class Nextpg extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appbar;

  const Nextpg({
    super.key,
    required this.appbar,
    required this.body
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: body,
    );
  }
}
