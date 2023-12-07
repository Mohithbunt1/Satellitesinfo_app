import 'package:flutter/material.dart';

class Laboratory extends StatelessWidget {
  Laboratory({super.key});

  final grid = [
    [
      "https://content.jdmagicbox.com/comp/delhi/14/011pg026014/catalogue/dr-lal-path-labs-ltd-closed-down-connaught-place-delhi-4h6j6hx.jpg?clr=",
      "1",
      "Dr. Lal PathLabs",
      "Delhi"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThHJCuzezqtHVPlqc2YBLvAgg6UulfVco-UA&usqp=CAU",
      "2",
      "CSIR",
      "Pune"
    ],
    [
      "https://www.vssc.gov.in/images/ISRO_Centres/VSSC_medium.jpg",
      "3",
      "VSSC",
      "Kerala"
    ],
    [
      "https://www.joonsquare.com/usermanage/image/business/srl-diagnostics-gurugram-33049/srl-diagnostics-gurugram-srl-diagnostics-3.jpeg",
      "4",
      "SRL Diagnostics",
      "Gurgaon, Haryana"
    ],
    [
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/CFSL_Hyderabad.jpg/800px-CFSL_Hyderabad.jpg",
      "5",
      "CFSL",
      "Hyderabad"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqsDgpLkhyRpvNrtWxNh8Q8AtjBjlPNHcNMx7qdKCDwWeOhqkkPSPj0DpYporHBrzyHQA&usqp=CAU",
      "6",
      "NRSC",
      "Hyderabad"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Laboratory in India",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: grid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 1.6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 4),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 6,
                      color: Colors.grey,
                      blurStyle: BlurStyle.outer,
                      spreadRadius: 4),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 235,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(grid[index][0]),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20, left: 14),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "No            : ${grid[index][1]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Name      : ${grid[index][2]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Place      : ${grid[index][3]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
