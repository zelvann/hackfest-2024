import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tampan/utils/appbar.dart';
import 'package:tampan/utils/navigator.dart';
import 'package:tampan/views/pre_login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Nextpg(
          appbar: Appbarform(),
          body: Preloginpg()
      ),
      theme: ThemeData(
        fontFamily: 'Poppins'
      )
    );
  }
}