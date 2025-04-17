import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                logo(280, 280),
                // const Text(
                //   'LOGIN UI KIT',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Color(0xFF00559E),
                //     fontWeight: FontWeight.w500,
                //     fontStyle: FontStyle.italic,
                //   ),
                // ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Developed By: Abdul Samad',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF60BB76), // Opacity effect
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget logo(double height_, double width_) {
    return Image.asset(
      'assets/LOGINKIT.png', // Replace with the path to your PNG file
      height: height_,
      width: width_,
    );
  }
}
