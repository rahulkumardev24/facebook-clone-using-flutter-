import 'package:facebook_clone/Screen/Tabs/video_screen.dart';
import 'package:facebook_clone/Screen/dash_board_screen.dart';
import 'package:facebook_clone/Screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DashBoardScreen(),
    );
  }
}

///_________________________________________ FACEBOOK CLONE _________________________________________________//
/// PROJECT STEP
/// STEP 1
/// splash screen => Done
/// step 2
/// Step complete Dash board screen
/// before that create custom text style
/// DASH BOARD SCREEN => DONE
/// STEP 3
/// Home screen => DONE
/// STEP 4
/// VIDEO SCREEN  => DONE
/// past some video file in assent folder
/// create user video post cars (same as user image post so copy)
///
///  STEP 5 =>
///
///
///
