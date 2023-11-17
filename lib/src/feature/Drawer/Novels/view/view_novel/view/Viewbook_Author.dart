// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Follow/view/Follow.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/widget/Novels_list_widget.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Reviews/view/Reviews.dart';
import 'package:google_fonts/google_fonts.dart';

class Author_Page extends StatefulWidget {
  const Author_Page({super.key});

  @override
  State<Author_Page> createState() => _Author_PageState();
}

bool ontap = false;

class _Author_PageState extends State<Author_Page> {
  @override
  void initState() {
    super.initState();
    ontap = false;
  }

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
        title: Text(
          "Author",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.file_upload_outlined,
                    color: Color(0xff001A72),
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Column(children: [
                Image.asset("assets/images/author.png"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: Text(
                    "Charles Dickens",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xff0D2063)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)))),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.white),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.1),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Follow_Page()));
                          },
                          child: Column(
                            children: [
                              Text(
                                "120",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: const Color(0xff343232)),
                              ),
                              Text(
                                "Following",
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
                        padding: EdgeInsets.only(right: width * 0.1),
                        child: Column(
                          children: [
                            Text(
                              "3.1k",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xff343232)),
                            ),
                            Text(
                              "Followers",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xff514D4C)),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "271.3k",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff343232)),
                          ),
                          Text(
                            "Plays",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xff514D4C)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  "Welcome to my Channel. Please follow my channel to get all the new updates.",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color.fromRGBO(0, 0, 0, 0.75)),
                ),
              ]),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.03),
              child: SizedBox(
                width: width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ontap = !ontap;
                              });
                            },
                            child: Text(
                              "Novels",
                              style: ontap == true
                                  ? GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.75))
                                  : GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                            ),
                          ),
                          ontap == false
                              ? const Divider(
                                  thickness: 3.5,
                                  endIndent: 20,
                                  indent: 20,
                                  color: Color(0xff0D2063),
                                )
                              : const Divider(
                                  thickness: 3.5,
                                  endIndent: 20,
                                  indent: 20,
                                  color: Colors.white,
                                )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                ontap = !ontap;
                              });
                            },
                            child: Text(
                              'Reviews',
                              style: ontap == false
                                  ? GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          const Color.fromRGBO(0, 0, 0, 0.75))
                                  : GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                            ),
                          ),
                          ontap == true
                              ? const Divider(
                                  thickness: 3.5,
                                  endIndent: 20,
                                  indent: 20,
                                  color: Color(0xff0D2063),
                                )
                              : const Divider(
                                  thickness: 3.5,
                                  endIndent: 20,
                                  indent: 20,
                                  color: Colors.white,
                                )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ontap == false
                ? const NovelsList_widget()
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * .05),
                    child: const BookReviews_Page(),
                  )
          ],
        ),
      ),
    );
  }
}
