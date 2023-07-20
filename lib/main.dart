import 'package:flutter/material.dart';
import 'package:on_boarding/Screens/home_screen.dart';
import 'package:on_boarding/Screens/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  show =  pref.getBool('ON BORDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: show ? IntroducScreen(): Home_Screen(),
    );
  }
}

