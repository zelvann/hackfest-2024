import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/screens/login.dart';
import 'package:tampan/widgets/button.dart';
import 'package:tampan/widgets/input_type.dart';
import 'package:tampan/widgets/line_text.dart';

class Registerpg extends StatelessWidget {
  Registerpg({super.key});

  final unController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  Future<void> pregister(String username,String email,String password,BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password
      );

      // insert to cloud only if has created json in auth
      final FirebaseFirestore fs = FirebaseFirestore.instance;
      final user = <String,dynamic> {
        "Username" : username,
        "Email" : email,
        "Password" : password
      };
      fs.collection("users")
          .add(user)
          .then((DocumentReference doc)
      => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Loginscreen())
      ));
    } catch (e) {
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(
              'SIGN UP',
              style: TextStyle(
                  color: HexColor('#023047'),
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
              )
            )
          ),
          Formwidget(
            label: 'Username',
            hintText: 'Type Your Username',
            controller: unController
          ),
          Formwidget(
            label: 'Email',
            hintText: 'Type Your Email',
            controller: emailController
          ),
          Formwidget(
            label: 'Password',
            hintText: 'Type Your Password',
            hideText: true,
            controller: passController
          ),
          Buttonwidget(
            label: 'SIGN UP',
            bgColor: HexColor('#023047'),
            fColor: Colors.white,
            isPressed: () {
              pregister(
                  unController.text,
                  emailController.text,
                  passController.text,
                  context
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                      fontSize: 14,
                  )
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Loginscreen())
                    );
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: HexColor('#023047')
                    )
                  )
                )
              ]
            )
          ),
          const Linetext(),
          Buttonwidget(
            label: 'Log In With Goggle',
            bgColor: Colors.white,
            fColor: HexColor('#023047'),
            isPressed: () {

            },
            isUseshape: true,
            imgPath: 'images/icon/goggle.png',
          )
        ]
      )
    );
  }
}