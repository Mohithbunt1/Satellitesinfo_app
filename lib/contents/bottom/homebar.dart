import 'package:assignment1_satellitesinfo_app/contents/details/customersat.dart';
import 'package:assignment1_satellitesinfo_app/contents/details/laboratory.dart';
import 'package:assignment1_satellitesinfo_app/contents/details/spacecraft.dart';
import 'package:flutter/material.dart';

class homenavbar extends StatelessWidget {
  const homenavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Explore Labs & Satellites",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 800,
                  child: Image.asset("lib/assets/1697822352868.jpg",
                      fit: BoxFit.fill),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 270),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Laboratory()));
                          },
                          child: const Text(
                            "Laboratory in India",
                            style: TextStyle(color: Colors.black, fontSize: 26),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 340),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => satellite(),
                                ));
                          },
                          child: const Text(
                            "Customer Satellites",
                            style: TextStyle(color: Colors.black, fontSize: 26),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 410),
                  child: Center(
                    child: Container(
                      width: 300,
                      height: 46,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Spacecrtafts(),
                                ));
                          },
                          child: const Text(
                            "Spacecraftes",
                            style: TextStyle(color: Colors.black, fontSize: 26),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
