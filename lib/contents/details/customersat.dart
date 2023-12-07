import 'package:flutter/material.dart';

class satellite extends StatelessWidget {
  satellite({super.key});

  final grid = [
    [
      "https://admin.eoportal.org/documents/163813/6584772/BIRD_AutoA.jpg/b91707d5-5f11-4a8f-f9cd-92b9b9f2945d?t=1670396352565",
      "BIRD",
      "22-10-2001",
      "Germany",
      "92"
    ],
    [
      "https://www.eoportal.org/ftp/satellite-missions/p/PROBA1_221021/PROBA_Auto23.jpeg",
      "PROBA",
      "22-10-2001",
      "Belgium",
      '94'
    ],
    [
      "https://content.satimagingcorp.com/media2/filer_public_thumbnails/filer_public/43/dc/43dcc513-d070-4df4-9f2b-0033d15afd41/cms_page_media1414spot-7.png__450.0x315.0_subsampling-2.png",
      "SLOT-7",
      "30-06-2014",
      "India",
      "720Kg"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBFhd-paQXxIy8HDiymLO7vuAmApydLVjcvKNEr5Fh5B-0AD8P8Mzw_JXEEoKGTFCfpjQ&usqp=CAU",
      "IRS-R2",
      "20-04-2011",
      "India",
      "169.5Kg"
    ],
    [
      "data:image/jpeg;base64,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",
      "Meshbed",
      "27-11-2019",
      "USA",
      "3U"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Customer Satellites",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: grid.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  const BoxShadow(
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
                      padding: const EdgeInsets.only(top: 20, left: 14),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Name  : ${grid[index][1]}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Date of Launch  : ${grid[index][2]}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Place  : ${grid[index][3]}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Mass    : ${grid[index][4]}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
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
