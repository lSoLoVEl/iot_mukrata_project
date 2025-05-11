import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              'assets/images/saulogo.png',
              width: 250.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.blueAccent),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'แอปพลิเคชันร้านหมูกระทะ',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              'เพื่อคนไทย',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              'โดยเด็กไทย',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              'สนใจแอปพลิเคชันติดต่อ',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              'เด็กไอที SAU',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              'assets/images/sauqr.png',
              width: 150.0,
            ),
          ],
        ),
      ),
    );
  }
}
