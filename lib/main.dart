import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iot_mukrata_project/views/splash_screen_ui.dart';

void main() {
  runApp(
      //เรียกใช้คลาสที่เรียกใช้วิดเจตหลักของแอป meterialApp()
      FlutterSauBuffet());
}

//-----------------------------------
class FlutterSauBuffet extends StatefulWidget {
  const FlutterSauBuffet({super.key});

  @override
  State<FlutterSauBuffet> createState() => _FlutterSauBuffetState();
}

class _FlutterSauBuffetState extends State<FlutterSauBuffet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
