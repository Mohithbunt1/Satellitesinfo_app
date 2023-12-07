import 'package:assignment1_satellitesinfo_app/contents/bottom/accbar.dart';
import 'package:assignment1_satellitesinfo_app/contents/bottom/favbar.dart';
import 'package:assignment1_satellitesinfo_app/contents/bottom/homebar.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int currentindex = 0;

  final List<Widget> Pages = [
    const homenavbar(),
    const Favorite(),
    const Accountbar(),
  ];
  void Ontapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentindex],
      bottomNavigationBar: (BottomNavigationBar(
        currentIndex: currentindex,
        onTap: Ontapped,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Account"),
        ],
      )),
    );
  }
}
