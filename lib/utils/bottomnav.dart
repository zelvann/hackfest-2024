import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() => runApp(const Botnavtampan());

class Botnavtampan extends StatelessWidget {
  const Botnavtampan ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Botnav(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}

class Botnav extends StatefulWidget {
  const Botnav({super.key});

  @override
  State<Botnav> createState() => _BotnavState();
}

class _BotnavState extends State<Botnav> {
  int cur = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ),
        ],
      ),
    );
  }
}