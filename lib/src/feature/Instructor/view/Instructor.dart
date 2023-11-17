// ignore_for_file: camel_case_types, must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/See%20All%20Reviews/view/seeAll.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/viewCourse_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/Students_viewed.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/feedback.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Instructor_value {
  var logo;
  var title;
  var text1;
  var students;
  var reviews;
  var about;
  Instructor_value(
    this.logo,
    this.title,
    this.text1,
    this.students,
    this.reviews,
    this.about,
  );
}

class Instructor_Page extends StatefulWidget {
  static const routePath = "/viewcourse/instructor";

  Instructor_Page({super.key, required this.object});
  var object;
  @override
  State<Instructor_Page> createState() => _Instructor_PageState();
}

class _Instructor_PageState extends State<Instructor_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                    context.push(ViewCourse_page.routePath);
                  },
                  icon: const Icon(Icons.file_upload_outlined)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 20),
                    child: Image.asset("assets/images/${widget.object.logo}"),
                  ),
                  SizedBox(
                    width: width * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.object.title,
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            widget.object.text1,
                            softWrap: true,
                            style: GoogleFonts.urbanist(
                                color: const Color.fromRGBO(0, 0, 0, 3 / 4),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, bottom: 18),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "Total Students",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 15),
                          ),
                        ),
                        Text(
                          widget.object.students,
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "Reviews",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Text(
                        widget.object.reviews,
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About me",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.object.about,
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 19.0),
                    child: Text(
                      "Show more",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color.fromRGBO(53, 84, 194, 1)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      "My courses (5)",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Students_viewed(
                              title:
                                  "Complete French Course:Learn French for Beginners",
                              rating: "4.6",
                              rates: "18,321",
                              text: "",
                              price: "499",
                              mrp: "1999",
                              image: "englishcourse.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Students_viewed(
                            title: "Spoken english",
                            rating: "4.6",
                            rates: "18,321",
                            price: "499",
                            mrp: '1999',
                            image: 'studentsviewed.png',
                            text: "Luke Priddy",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25.0),
                          child: Students_viewed(
                            title: "Spoken english",
                            rating: "4.6",
                            rates: "18,321",
                            price: "499",
                            mrp: '1999',
                            image: 'studentsviewed.png',
                            text: "Luke Priddy",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "See all",
              style: GoogleFonts.urbanist(
                  color: const Color.fromRGBO(53, 84, 194, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23, top: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feedback",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(217, 217, 217, 1)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    child: Text(
                      "Add review",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromRGBO(255, 241, 243, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 26, horizontal: 44),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              Text(
                                "4.7",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              )
                            ],
                          ),
                          Text(
                            "Reviews",
                            style: GoogleFonts.urbanist(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromRGBO(255, 241, 243, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 26, horizontal: 44),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.person_outline_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "753",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                              )
                            ],
                          ),
                          Text(
                            "Students",
                            style: GoogleFonts.urbanist(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                children: [
                  Feedback_Page(
                      image: "feedback4.png",
                      id: "moulika_sheet",
                      time: "31 mins ago",
                      comment: "Great Teacher"),
                  Feedback_Page(
                      image: "feedback5.png",
                      id: "stefen_sammy",
                      time: "4 months ago",
                      comment: "Mindblowing Stuff.....!"),
                  Feedback_Page(
                      image: "feedback3.png",
                      id: "damon_salavtore",
                      time: "9 months ago",
                      comment: "Thank you Linguae for teaching us"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 30),
              child: GestureDetector(
                onTap: () {
                  context.push(SeeAllReview.routePath);
                },
                child: Text(
                  "See all",
                  style: GoogleFonts.urbanist(
                      color: const Color.fromRGBO(53, 84, 194, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 23, bottom: 35),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.attach_file_sharp),
                          ),
                          Text(
                            "Website",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios_rounded))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
