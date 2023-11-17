// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Mylearning_controller.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Filter.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/view/Video_page.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLearning_Page extends ConsumerWidget {
  static const routePath = "/Mylearning";
  const MyLearning_Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  ref.read(bottomNavProvider.notifier).state = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        centerTitle: true,
        title: Text(
          "My learning",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_rounded)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {
                    context.push(Filter_Page.routePath);
                  },
                  icon: const Icon(Icons.filter_list_rounded)),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Video_Page()));
                    },
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            width: width * 0.36,
                            height: height * 0.15,
                            child: Image.asset(
                              "assets/images/englishcourse.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            width: width * 0.46,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Complete English Course: Master English Beginner to Advanced",
                                  style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text(
                                    "By Linguae Learning",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.85),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: width * 0.46,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      Container(
                                        width: (width * 0.46) * 16 / 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                13, 32, 99, 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "16% complete",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color.fromRGBO(143, 149, 158, 1)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Video_Page()));
                    },
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: SizedBox(
                            width: width * 0.36,
                            height: height * 0.15,
                            child: Image.asset(
                              "assets/images/frenchcourse.png",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            width: width * 0.46,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Complete French Course: Learn French for Beginners",
                                  style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 7.0),
                                  child: Text(
                                    "By Linguae Learning",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.85),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 7),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: width * 0.46,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      Container(
                                        width: (width * 0.46) * 87 / 100,
                                        decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                13, 32, 99, 1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  "87% complete",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Color.fromRGBO(143, 149, 158, 1)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Video_Page()));
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: width * 0.36,
                          height: height * 0.15,
                          child: Image.asset(
                            "assets/images/japancourse.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: SizedBox(
                          width: width * 0.46,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Learn Japanese for Beginners: The Ultimate 100-Lesson Course",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 7.0),
                                child: Text(
                                  "By Innovative Learning",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 0.85),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: width * 0.46,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              217, 217, 217, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    Container(
                                      width: (width * 0.46),
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              13, 32, 99, 1),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "completed",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: Color.fromRGBO(143, 149, 158, 1)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ref.watch(VideoProvider) == false
              ? Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: height * 0.23,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: height * 0.16,
                                width: width * 0.5,
                                child: Image.asset(
                                  "assets/images/englishcourse.png",
                                  fit: BoxFit.fill,
                                )),
                            Container(
                              color: const Color(0xffE8ECF4),
                              width: width * 0.5,
                              height: height * 0.16,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("assets/images/minus15.png"),
                                  Image.asset("assets/images/video_play.png"),
                                  Image.asset("assets/images/plus15.png"),
                                  Image.asset("assets/images/headset.png")
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                            height: height * 0.07,
                            width: width,
                            color: const Color(0xffE8ECF4),
                            child: Padding(
                              padding: EdgeInsets.only(left: width * 0.06),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.03),
                                    child: Text(
                                      "8",
                                      style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Comparatives & Superlatives",
                                        style: GoogleFonts.urbanist(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                      Text(
                                        "Complete English Course",
                                        style: GoogleFonts.urbanist(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
