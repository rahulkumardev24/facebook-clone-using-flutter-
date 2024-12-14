import 'package:flutter/material.dart';

class NotifactionScreen extends StatefulWidget {
  const NotifactionScreen({super.key});

  @override
  State<NotifactionScreen> createState() => _NotifactionScreenState();
}

class _NotifactionScreenState extends State<NotifactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Notification Screen"),),
    );
  }
}
