// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/View_novel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Novels_Widget extends StatefulWidget {
  Novels_Widget(
      {super.key,
      required this.image1,
      required this.name1,
      required this.reads1,
      required this.image2,
      required this.name2,
      required this.reads2,
      required this.image3,
      required this.name3,
      required this.reads3,
      required this.image4,
      required this.name4,
      required this.reads4});

  var image1;
  var name1;
  var reads1;
  var image2;
  var name2;
  var reads2;
  var image3;
  var name3;
  var reads3;
  var image4;
  var name4;
  var reads4;
  @override
  State<Novels_Widget> createState() => _Novels_WidgetState();
}

class _Novels_WidgetState extends State<Novels_Widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.04, bottom: height * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewNovel_Page(
                                  image: widget.image1,
                                  reads: widget.reads1,
                                  name: widget.name1,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            height: height * 0.18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/${widget.image1}",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: height * 0.01,
                            right: width * 0.02,
                            child: Container(
                              width: width * 0.1,
                              height: height * 0.017,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/headphones.svg"),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.005),
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/books.svg",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: height * 0.024,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xffFF9E0C),
                              ),
                          onRatingUpdate: (rating) {}),
                      Text(
                        widget.name1,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        "${widget.reads1}k Reads",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff514D4C)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.04, bottom: height * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewNovel_Page(
                                  image: widget.image2,
                                  reads: widget.reads2,
                                  name: widget.name2,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            height: height * 0.18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/${widget.image2}",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: height * 0.01,
                            right: width * 0.02,
                            child: Container(
                              width: width * 0.1,
                              height: height * 0.017,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/headphones.svg"),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.005),
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/books.svg",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: height * 0.024,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xffFF9E0C),
                              ),
                          onRatingUpdate: (rating) {}),
                      Text(
                        widget.name2,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        "${widget.reads2}K Reads",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff514D4C)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.04, bottom: height * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewNovel_Page(
                                  image: widget.image3,
                                  reads: widget.reads3,
                                  name: widget.name3,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            height: height * 0.18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/${widget.image3}",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: height * 0.01,
                            right: width * 0.02,
                            child: Container(
                              width: width * 0.1,
                              height: height * 0.017,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/headphones.svg"),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.005),
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/books.svg",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: height * 0.024,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xffFF9E0C),
                              ),
                          onRatingUpdate: (rating) {}),
                      Text(
                        widget.name3,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        "${widget.reads3}K Reads",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff514D4C)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height * 0.03),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewNovel_Page(
                                  image: widget.image4,
                                  reads: widget.reads4,
                                  name: widget.name4,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: width * 0.25,
                            height: height * 0.18,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/${widget.image4}",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: height * 0.01,
                            right: width * 0.02,
                            child: Container(
                              width: width * 0.1,
                              height: height * 0.017,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/headphones.svg"),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.005),
                                    child: const Text(
                                      "/",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/books.svg",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: height * 0.024,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star_rate_rounded,
                                color: Color(0xffFF9E0C),
                              ),
                          onRatingUpdate: (rating) {}),
                      Text(
                        widget.name4,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Text(
                        "${widget.reads4}K Reads",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: const Color(0xff514D4C)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
