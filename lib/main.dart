import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedal_pro/pages/technician_screens/tec_main.dart';
import 'package:pedal_pro/pages/welcome_screens/welcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pedal_pro/tecMainPage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TechnicianMainPage(),
    );
  }
}
