// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Books/view/books_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/EnglishPage.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/FrenchPage.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/German_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/JapanesePage.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/course_pageWidget.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Course_page extends ConsumerStatefulWidget {
  static const routePath = "/course";
  
  const Course_page({super.key});

  @override
  ConsumerState<Course_page> createState() => _Course_pageState();
}

class _Course_pageState extends ConsumerState<Course_page> {
  @override
  Widget build(BuildContext context) {
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
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Courses",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
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
                            builder: (context) => const Books_Page()));
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const English_Page()));
                    },
                    child: Text(
                      "Show all",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Course_widget(
                title: "English",
                text1: "Complete English Course",
                text2: "Master English Beginner to Advanced",
                text3: "Linguae Learning",
                price: "499",
                mrp: "1999",
                image: "englishcourse.png"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Japanese",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Japanese_Page()));
                    },
                    child: Text(
                      "Show all",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Course_widget(
                title: "Japanese",
                text1: "Complete Japanese Course",
                text2: "Learn Japanese for Beginners",
                text3: "Linguae Learning",
                price: "499",
                mrp: "1999",
                image: "japanesecourse.png"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "French",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const French_Page()));
                    },
                    child: Text(
                      "Show all",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Course_widget(
                title: "French",
                text1: "Complete French Course",
                text2: "Learn French for Beginners",
                text3: "Linguae Learning",
                price: "999",
                mrp: "2999",
                image: "frenchcourse.png"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "German",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 26),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const German_Page()));
                    },
                    child: Text(
                      "Show all",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Course_widget(
                title: "German",
                text1: "Best way to Learn German Language",
                text2: "Learn German for Beginners",
                text3: "Sandra 11percent",
                price: "999",
                mrp: "2999",
                image: "germancourse.png"),
          ],
        ),
      ),
    );
  }
}
