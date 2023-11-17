// ignore_for_file: must_be_immutable, file_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod_base/src/feature/Cart/cart_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/course_pageWidget.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/feedback.dart';

import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/Students_viewed.dart';
import 'package:flutter_riverpod_base/src/feature/Instructor/view/Instructor.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewCourse_page extends StatefulWidget {
  static const routePath = "/viewcourse";
  ViewCourse_page({
    super.key,
    this.object,
  });
  viewCourse_value? object;

  @override
  State<ViewCourse_page> createState() => _ViewCourse_pageState();
}

class _ViewCourse_pageState extends State<ViewCourse_page> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.file_upload_outlined)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 21.0),
              child: SizedBox(
                  width: width * 0.9,
                  child: Image.asset(
                    "assets/images/${widget.object?.image.toString()}",
                    fit: BoxFit.fitWidth,
                  )),
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7),
              child: RichText(
                text: TextSpan(
                    text: '${widget.object!.text1.toString()}: ',
                    style: GoogleFonts.urbanist(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.object!.text2.toString(),
                        style: GoogleFonts.urbanist(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Text(
                "Learn how to have a natural conversation FAST from a native English speaker!",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: RatingBar.builder(
                        initialRating: 4.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: height * 0.03,
                        itemBuilder: (context, _) => const Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (rating) {}),
                  ),
                  Text(
                    "4.6  ",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  Text(
                    "1.7k Reviews",
                    style: GoogleFonts.urbanist(
                        color: const Color.fromRGBO(0, 0, 0, 3 / 4),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 5, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Created by ${widget.object!.text3.toString()}",
                    style: GoogleFonts.urbanist(
                        color: const Color.fromRGBO(0, 0, 0, 3 / 4),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, bottom: 21),
              child: Row(
                children: [
                  Text("\u{20B9}${widget.object!.price.toString()}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20)),
                  Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: Text(
                      widget.object!.mrp.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.grey,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.9,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              // color: Colors.deepOrangeAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12.0, top: 22, bottom: 20),
                    child: Text(
                      "What you'll learn",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.check_rounded,
                            color: Color.fromARGB(255, 3, 33, 58),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Business English",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.check_rounded,
                            color: Color.fromARGB(255, 3, 33, 58),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "How to talk to friends",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.check_rounded,
                            color: Color.fromARGB(255, 3, 33, 58),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "How to make appointments and plans",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.check_rounded,
                            color: Color.fromARGB(255, 3, 33, 58),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Describing your favorite books and films",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(
                            Icons.check_rounded,
                            color: Color.fromARGB(255, 3, 33, 58),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "Conversational English to sound like a native",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            "assets/images/tv.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "116.5 hours on-demand video",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            "assets/images/cup.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "Certificate of completion",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset(
                            "assets/images/mobile.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "Access on Mobile and TV",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "assets/images/infinite.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          "Full time access",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, bottom: 11),
              child: Row(
                children: [
                  Text(
                    "Requirements",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width.toInt() * 0.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 10,
                      ),
                      Text(
                        "A basic level of English",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 10,
                      ),
                      Text(
                        "A positive attitude",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 10,
                      ),
                      Text(
                        "A desire to learn",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Curriculum",
                    style: GoogleFonts.urbanist(
                        fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 11.0),
                    child: Row(
                      children: [
                        Text("6 sections"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                          ),
                        ),
                        Text("50 lectures"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Icon(
                            Icons.fiber_manual_record,
                            size: 8,
                          ),
                        ),
                        Text("116.5 hrs total length"),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 1-English Grammar",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 2-English Conversation",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 3-Reading and Listening",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 4-Pronunciation",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 5-Advanced English",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section 6-Bonus: Master Native English",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              size: 20,
                            ))
                      ]),
                  const Divider(),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      "Description",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                  ),
                  Text(
                    "After you've learned the basics of English, it's important to learn the art of conversation so you can make friends, conduct business, take classes, or watch your favorite English films and not only understand what people say, but to also be able to reply with your own though and feelings......",
                    style: GoogleFonts.urbanist(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Show more",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff3554C2)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.025),
                    child: Text(
                      "Students also viewed",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 19),
                    ),
                  ),
                  Students_viewed(
                      title: "Spoken english",
                      rating: "4.6",
                      rates: "18,321",
                      text: "Luke Priddy",
                      price: "499",
                      mrp: "1999",
                      image: "studentsviewed.png"),
                  Students_viewed(
                      title: "Spoken english",
                      rating: "4.6",
                      rates: "18,321",
                      text: "Luke Priddy",
                      price: "499",
                      mrp: "1999",
                      image: "studentsviewed.png"),
                  Students_viewed(
                      title: "Spoken english",
                      rating: "4.6",
                      rates: "18,321",
                      text: "Luke Priddy",
                      price: "499",
                      mrp: "1999",
                      image: "studentsviewed.png")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, top: 25, right: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Instructor",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, bottom: 5),
                    child: Text(
                      widget.object!.text3.toString(),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                  Text(
                    "Top language learning courses for beginners",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 11),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 22.0),
                          child: Image.asset("assets/images/linguae.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4.6 Instructor rating",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "16,889 Reviews",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "3,63,840 Students",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            Text(
                              "10 courses",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    "We are a group of language tutors dedicated to helping you learn any language you desire, whether it's Spanish, Japanese, German, French or anything else. We work with dozens of professional language tutors around the world ",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, bottom: 5),
                    child: Text(
                      "Show more",
                      style: GoogleFonts.urbanist(
                          color: const Color.fromRGBO(53, 84, 194, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                      onPressed: () {
                        Instructor_value value = Instructor_value(
                          "linguae.png",
                          "Linguae Learning",
                          "Top language learning courses for beginners",
                          "3,63,840",
                          "16,889",
                          "We are a group of language tutors dedicated to helping you learn any language you desire, whether it's Spanish, Japanese, German, French or anything else. We work with dozens of professional language tutors around the world",
                        );
                        context.push(Instructor_Page.routePath, extra: value);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black)))),
                      child: Text(
                        "View Profile",
                        style: GoogleFonts.urbanist(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 23.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Student feedback",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9.0, bottom: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Text(
                            "4.6",
                            style: GoogleFonts.montserrat(
                                fontSize: 19, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "course rating",
                          style: GoogleFonts.montserrat(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.03,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(150, 150, 150, 1),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: height * 0.02,
                            width: width * 0.25,
                            child: RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: height * 0.02,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ),
                        Text(
                          "65%",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.03,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(150, 150, 150, 1),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: height * 0.02,
                            width: width * 0.25,
                            child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: height * 0.02,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ),
                        Text(
                          "26%",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.03,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(150, 150, 150, 1),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: height * 0.02,
                            width: width * 0.25,
                            child: RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: height * 0.02,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ),
                        Text(
                          "6%",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.03,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(150, 150, 150, 1),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.02,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: height * 0.02,
                            width: width * 0.25,
                            child: RatingBar.builder(
                                initialRating: 2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: height * 0.02,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ),
                        Text(
                          "2%",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 11.0),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: height * 0.03,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(150, 150, 150, 1),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.02,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color.fromRGBO(150, 150, 150, 1),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SizedBox(
                            height: height * 0.02,
                            width: width * 0.25,
                            child: RatingBar.builder(
                                initialRating: 1,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: height * 0.02,
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ),
                        Text(
                          "2%",
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w600, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 35.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Feedback_Page(
                              image: "feedback1.png",
                              id: "Priyanaka_mohan",
                              time: "31 mins ago",
                              comment: "Easy way to learn"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Feedback_Page(
                              image: "feedback2.png",
                              id: "ayueshi_varma",
                              time: "3 months ago",
                              comment: "Easy way to learn"),
                        ),
                        Feedback_Page(
                            image: "feedback3.png",
                            id: "damon_salavtore",
                            time: "1 year ago",
                            comment: "Just go for it")
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "See all",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color.fromARGB(255, 9, 30, 221)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(width * 0.1, width * 0.023),
            topRight: Radius.elliptical(width * 0.1, width * 0.023)),
        child: SizedBox(
          height: height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3.0, top: 8, bottom: 8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\u{20B9}${widget.object!.price}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Flexible(
                      child: Text(
                        "\u{20B9}${widget.object!.mrp}",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: height * 0.05,
                  width: width * 0.65,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              const MaterialStatePropertyAll(Color(0xff0D2063)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cart_Page(
                                      image: widget.object!.image,
                                      title: widget.object!.text1,
                                      text1: widget.object!.text1,
                                      text2: widget.object!.text2,
                                      text3: widget.object!.text3,
                                      price: widget.object!.price,
                                      rating: "4.6",
                                      reviews: "1.7k",
                                    )));
                      },
                      child: Text(
                        "Buy Now",
                        style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
