import 'package:flutter/material.dart';
import 'package:tampan/utils/input_type.dart';

class Loginpg extends StatelessWidget {
  const Loginpg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Formutils(
          label: 'First Name',
          hintText: 'Type Your First Name',
        ),
        SizedBox(height: 8),
        Formutils(
          label: 'Password',
          hintText: 'Type Your Password',
        ),
      ],
    );
  }
}