import 'package:flutter/material.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/views/pre_login.dart';

class Prescreen extends StatelessWidget {
  const Prescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbarform(),
      body: Preloginpg()
    );
  }
}