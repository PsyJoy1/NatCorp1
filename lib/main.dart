import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:natcorp/Pages/home/home.dart';
import 'package:natcorp/Pages/splash/splash_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0xFF43B1B7),
        accentColor: Color(0xFFFED408),
      ),
      home: Splash(),
    );
  }
}
