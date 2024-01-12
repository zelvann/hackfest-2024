import 'package:flutter/material.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/views/login_form.dart';
import 'package:tampan/views/register_form.dart';

void main() => runApp(const Homepage());

class Homepage extends StatelessWidget {
  const Homepage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homeview(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Appbarform(),
      body: Registerpg()
    );
  }
}