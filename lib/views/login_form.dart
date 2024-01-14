import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tampan/screens/home.dart';
import 'package:tampan/screens/register.dart';
import 'package:tampan/widgets/line_text.dart';
import 'package:tampan/widgets/input_type.dart';
import 'package:tampan/widgets/button.dart';

class Loginpg extends StatefulWidget {
  const Loginpg({super.key});

  @override
  State<Loginpg> createState() => _LoginpgState();
}

class _LoginpgState extends State<Loginpg> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOG IN',
                  style: TextStyle(
                    color: HexColor('#023047'),
                    fontWeight: FontWeight.w700,
                    fontSize: 48
                  )
                )
              ]
            )
          ),
          const Formwidget(
              label: 'First Name',
              hintText: 'Type Your First Name'
          ),
          const Formwidget(
            label: 'Password',
            hintText: 'Type Your Password'
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          fillColor: MaterialStateProperty.resolveWith <Color?>(
                                  (Set<MaterialState> states) {
                                return HexColor('#023047');
                              }
                          ),
                          checkColor: Colors.white
                        )
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor('#6F6F6F')
                        )
                      )
                    ]
                  )
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const Loginpg())
                      );
                    },
                    child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#6F6F6F')
                        )
                    )
                )
              ]
            )
          ),
          Buttonwidget(
            label: 'LOG IN',
            bgColor: HexColor('#023047'),
            fColor: Colors.white,
            isPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homescreen())
              );
            }
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont have an account?',
                  style: TextStyle(
                      fontSize: 14
                  )
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Registerscreen())
                    );
                  },
                  child: Text(
                    'Sign Up',
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
            imgPath: 'images/icon/goggle.png'
          )
        ]
      )
    );
  }
}