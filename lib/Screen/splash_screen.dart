import 'dart:async';

import 'package:facebook_clone/Screen/dash_board_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// here we apply splash screen logic
  /// after splash screen navigate to dash board screen
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>const DashBoardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Icons/communication (1).png",
              height: 100,
            ),
            const SizedBox(
              height: 500,
            ),
            const Text(
              "From",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Icons/meta (1).png",
                    height: 30,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Meta",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// Splash Screen
/// Done
