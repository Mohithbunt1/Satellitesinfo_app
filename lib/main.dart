import 'package:assignment1_satellitesinfo_app/contents/Bottonnav.dart';
import 'package:assignment1_satellitesinfo_app/contents/bottom/accbar.dart';
import 'package:assignment1_satellitesinfo_app/contents/details/laboratory.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottomnavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
