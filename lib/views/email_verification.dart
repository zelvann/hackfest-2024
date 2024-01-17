import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/utils/navigator.dart';
import 'package:tampan/views/login_form.dart';
import 'package:tampan/widgets/input_field.dart';
import 'package:tampan/widgets/button.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({super.key});

  final eController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                    child: Text(
                      "FORGOT PASSWORD",
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 48,
                          color: HexColor('#023047')
                      )
                    )
                )
              ]
            )
          ),
          Formwidget(
            label: 'Email',
            hintText: 'Type Your Email',
            controller: eController,
          ),
          Buttonwidget(
              label: 'VERIFY YOUR EMAIL',
              bgColor: HexColor('#023047'),
              fColor: Colors.white,
              isPressed: () {

              }
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                    'Already remember your password?',
                    style: TextStyle(
                        fontSize: 14
                    )
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context)
                          => const Nextpg(
                              appbar: Appbarform(),
                              body: Loginpg()
                          ))
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
        ]
      )
    );
  }
}