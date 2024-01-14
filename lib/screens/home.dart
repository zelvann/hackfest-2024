import 'package:flutter/material.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/views/community.dart';
import 'package:tampan/views/home.dart';
import 'package:tampan/views/profile.dart';
import 'package:hexcolor/hexcolor.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Hometampan(),
        theme: ThemeData(
            fontFamily: 'Poppins'
        )
    );
  }
}

class Hometampan extends StatefulWidget {
  const Hometampan({super.key});

  @override
  State<Hometampan> createState() => _HometampanState();
}

class _HometampanState extends State<Hometampan> {
  int cur = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Appbartampan(),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: (index) {
              setState(() {
                cur = index;
              });
            },
            backgroundColor: HexColor("#EAF8FF"),
            indicatorColor: Colors.black,
            selectedIndex: cur,
            destinations: const <Widget> [
              NavigationDestination(
                selectedIcon: Icon(
                    Icons.home,
                    color: Colors.white
                ),
                icon: Icon(
                    Icons.home,
                    color: Colors.black
                ),
                label: "Home",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.comment_bank_rounded,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.comment_bank_rounded,
                  color: Colors.black,
                ),
                label: "Komunitas",
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.accessibility_new,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.accessibility_new,
                  color: Colors.black,
                ),
                label: "Profile",
              )
            ]
        ),
        body: const <Widget> [
          Homepg(),
          Komunitaspg(),
          Profilepg()
        ][cur]
    );
  }
}