// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Drawer.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/controller/HomepopupController.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/widget/HomePopup.dart';
import 'package:flutter_riverpod_base/src/feature/Notification/Notification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends ConsumerStatefulWidget {
  static const routePath = "/homepage";
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  void initState() {
    super.initState();
    if (ref.read(HomepopupController) == true) {
      Future.delayed(Duration.zero, () {
        showDialog(
          barrierColor: Colors.black26,
          context: context,
          builder: (context) {
            return const Homepopup();
          },
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: const Color(0xffFEFEFE),
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Image.asset(
                      "assets/images/drawer.png",
                      height: 50,
                      width: 50,
                    ),
                  )),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width * 0.05),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notification_Page()));
                },
                child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                            width: 2)),
                    child: const Icon(Icons.notifications_none_rounded)),
              ),
            )
          ],
        ),
        drawer: const Drawer_Page(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 30),
                child: Text(
                  "Discover your",
                  style: GoogleFonts.urbanist(
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("journey to excellence",
                    style: GoogleFonts.urbanist(
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, top: 25, right: 23),
                child: SizedBox(
                  height: 58,
                  width: width,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromRGBO(245, 246, 250, 1),
                        filled: true,
                        hintText: "Search Course",
                        hintStyle: GoogleFonts.urbanist(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 17.0, right: 16),
                          child: Image.asset("assets/images/search.png"),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              right: 21.0, top: 11, bottom: 11),
                          child: Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Image.asset("assets/images/sort.png")),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0, left: 30, bottom: 37),
                child: Text(
                  "Browse by Language",
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/england.png")),
                                  Text(
                                    "English",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/german.png")),
                                  Text(
                                    "German",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.1755,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/japanese.png")),
                                  Text(
                                    "Japanese",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/french.png")),
                                  Text(
                                    "French",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/spanish.png")),
                                  Text(
                                    "Spanish",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/korean.png")),
                                  Text(
                                    "Korean",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/chinese.png")),
                                  Text(
                                    "Chinese",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.175,
                              width: height * 0.175,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: const Color.fromRGBO(245, 245, 247, 1),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                      height: height * 0.14,
                                      width: height * 0.14,
                                      child: Image.asset(
                                          "assets/images/russian.png")),
                                  Text(
                                    "Russian",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
