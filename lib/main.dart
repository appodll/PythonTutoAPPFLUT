import 'package:applicationtutorial/Controller/screen_cont.dart';
import 'package:applicationtutorial/Controller/sharedprefences.dart';
import 'package:applicationtutorial/firebase_options.dart';
import 'package:applicationtutorial/login_register/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MAIN());
}

class MAIN extends StatefulWidget {
  const MAIN({super.key});

  @override
  State<MAIN> createState() => _MAINState();
}

class _MAINState extends State<MAIN> {
  @override
  void initState() {
    Memory().read_uid();
    super.initState();
  }

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LOGIN(),
    );
  }
}
