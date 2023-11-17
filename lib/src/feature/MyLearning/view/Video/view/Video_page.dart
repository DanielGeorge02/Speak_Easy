// ignore_for_file: file_names, camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Mylearning_controller.dart';

import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/widget/downloads.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/widget/lectures.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/widget/more.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Video_Page extends ConsumerStatefulWidget {
  const Video_Page({super.key});

  @override
  ConsumerState<Video_Page> createState() => _Video_Page();
}

class _Video_Page extends ConsumerState<Video_Page> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: width,
                  child: Image.asset(
                    "assets/images/video.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.05, top: width * 0.02),
                  child: GestureDetector(
                    onTap: () {
                      ref.read(VideoProvider.notifier).state = false;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      color: const Color(0xff8C8C8C),
                      child: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Complete English Course: Master English Beginner to Advanced",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Linguae Learning",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          side: tab != 0
                                              ? const BorderSide(
                                                  color: Colors.grey)
                                              : BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(4))),
                                  backgroundColor: tab == 0
                                      ? const MaterialStatePropertyAll(
                                          Color(0xff0D2063))
                                      : const MaterialStatePropertyAll(
                                          Colors.white)),
                              onPressed: () {
                                setState(() {
                                  tab = 0;
                                });
                              },
                              child: Text(
                                "Lectures",
                                style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        tab == 0 ? Colors.white : Colors.black),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation:
                                          const MaterialStatePropertyAll(0),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              side: tab != 1
                                                  ? const BorderSide(
                                                      color: Colors.grey)
                                                  : BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(4))),
                                      backgroundColor: tab == 1
                                          ? const MaterialStatePropertyAll(
                                              Color(0xff0D2063))
                                          : const MaterialStatePropertyAll(
                                              Colors.white)),
                                  onPressed: () {
                                    setState(() {
                                      tab = 1;
                                    });
                                  },
                                  child: Text(
                                    "Downloads",
                                    style: GoogleFonts.urbanist(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: tab == 1
                                            ? Colors.white
                                            : Colors.black),
                                  )),
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll(0),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            side: tab != 2
                                                ? const BorderSide(
                                                    color: Colors.grey,
                                                  )
                                                : BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(4))),
                                    backgroundColor: tab == 2
                                        ? const MaterialStatePropertyAll(
                                            Color(0xff0D2063))
                                        : const MaterialStatePropertyAll(
                                            Colors.white)),
                                onPressed: () {
                                  setState(() {
                                    tab = 2;
                                  });
                                },
                                child: Text(
                                  "More",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: tab == 2
                                          ? Colors.white
                                          : Colors.black),
                                )),
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(222, 222, 222, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset("assets/images/download.png"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(),
            if (tab == 0)
              const Expanded(child: Lectures())
            else if (tab == 1)
              const Expanded(child: Downloads())
            else
              const Expanded(child: More_video())
          ],
        ),
      ),
    );
  }
}
