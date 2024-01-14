import 'package:flutter/material.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/views/login_form.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbarform(),
      body: Loginpg(),
    );
  }
}