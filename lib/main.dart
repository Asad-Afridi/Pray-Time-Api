import 'package:flutter/material.dart';
import 'package:pray_time_app/screens/loading_screen.dart';
void main()=>runApp(PrayApp());

class PrayApp extends StatelessWidget {
  const PrayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}

