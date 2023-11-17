// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Novels_Search.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Novels_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Novels_Page extends StatefulWidget {
  const Novels_Page({super.key});
  static const routePath = "/novels";

  @override
  State<Novels_Page> createState() => _Novels_PageState();
}

class _Novels_PageState extends State<Novels_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leadingWidth: 75,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0, top: 8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE8ECF4)),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        title: const Text(
          "Novels",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Novels_search_Page()));
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.05, top: height * 0.025),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Continue Reading",
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: Text(
                            "More",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff524FD5),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Novels_Widget(
                    image1: "novel1.png",
                    image2: "novel2.png",
                    image3: "novel3.png",
                    image4: "novel4.png",
                    name1: "Two Cities",
                    name2: "Fake Love",
                    name3: "The Rings",
                    name4: "Fake Love",
                    reads1: "3.1",
                    reads2: "4.5",
                    reads3: "32.5",
                    reads4: "54.5",
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Novels",
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: Text(
                            "More",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff524FD5),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Novels_Widget(
                    image1: "novel4.png",
                    image2: "novel5.png",
                    image3: "novel6.png",
                    image4: "novel4.png",
                    name1: "Two Cities",
                    name2: "Fake Love",
                    name3: "The Rings",
                    name4: "Fake Love",
                    reads1: "3.1",
                    reads2: "4.5",
                    reads3: "32.5",
                    reads4: "54.5",
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trending Novels",
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: Text(
                            "More",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff524FD5),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Novels_Widget(
                    image1: "novel7.png",
                    image2: "novel3.png",
                    image3: "novel1.png",
                    image4: "novel5.png",
                    name1: "Two Cities",
                    name2: "Fake Love",
                    name3: "The Rings",
                    name4: "Fake Love",
                    reads1: "3.1",
                    reads2: "4.5",
                    reads3: "32.5",
                    reads4: "54.5",
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Rated Novels",
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: Text(
                            "More",
                            style: GoogleFonts.poppins(
                                color: const Color(0xff524FD5),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                  Novels_Widget(
                    image1: "novel1.png",
                    image2: "novel6.png",
                    image3: "novel5.png",
                    image4: "novel4.png",
                    name1: "Two Cities",
                    name2: "Fake Love",
                    name3: "The Rings",
                    name4: "Fake Love",
                    reads1: "3.1",
                    reads2: "4.5",
                    reads3: "32.5",
                    reads4: "54.5",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
