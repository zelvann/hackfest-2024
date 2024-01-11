import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/button.dart';
import 'package:tampan/views/login_form.dart';
import 'package:tampan/utils/input_type.dart';

class Registerpg extends StatelessWidget {
  const Registerpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Formutils(
            label: 'First Name',
            hintText: 'Type Your First Name'
        ),
        SizedBox(height: 8),
        Formutils(
            label: 'Email',
            hintText: 'Type Your Email'
        ),
        SizedBox(height: 8),
        Formutils(
            label: 'Password',
            hintText: 'Type Your Password'
        ),
        SizedBox(height: 8),
        Buttonutil(
          label: 'SIGN UP',
          bgColor: HexColor('#023047'),
          fColor: Colors.white,
          isPressed: () {

          },
        ),
        SizedBox(height: 8),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
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
                        MaterialPageRoute(builder: (context) => Loginpg())
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
        SizedBox(height: 8),
        Buttonutil(
          label: 'Log In With Goggle',
          bgColor: Colors.white,
          fColor: HexColor('#023047'),
          isPressed: () {

          },
          isUseshape: true,
        )
      ],
    );
  }
}