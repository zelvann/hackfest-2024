import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/widgets/button.dart';
import 'package:tampan/views/login_form.dart';
import 'package:tampan/widgets/input_type.dart';
import 'package:tampan/widgets/line_text.dart';

class Registerpg extends StatelessWidget {
  const Registerpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Text(
            'SIGN UP',
            style: TextStyle(
                color: HexColor('#023047'),
                fontWeight: FontWeight.w700,
                fontSize: 48,
                fontFamily: 'Poppins'
            ),
          ),
        ),
        const Formwidget(
            label: 'First Name',
            hintText: 'Type Your First Name'
        ),
        const Formwidget(
            label: 'Email',
            hintText: 'Type Your Email'
        ),
        const Formwidget(
            label: 'Password',
            hintText: 'Type Your Password'
        ),
        Buttonwidget(
          label: 'SIGN UP',
          bgColor: HexColor('#023047'),
          fColor: Colors.white,
          isPressed: () {

          },
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins'
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Loginpg())
                    );
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      color: HexColor('#023047')
                    ),
                  ),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        const Linetext(),
        Buttonwidget(
          label: 'Log In With Goggle',
          bgColor: Colors.white,
          fColor: HexColor('#023047'),
          isPressed: () {

          },
          isUseshape: true,
          imgPath: 'images/icon/goggle.png',
        ),
      ],
    );
  }
}