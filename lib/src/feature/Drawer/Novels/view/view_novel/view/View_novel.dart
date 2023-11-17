// ignore_for_file: camel_case_types, must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Viewbook_Author.dart';

import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Chapters/view/Chapters.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Reviews/view/Reviews.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewNovel_Page extends StatefulWidget {
  ViewNovel_Page(
      {super.key,
      required this.image,
      required this.name,
      required this.reads});
  var image;
  var name;
  var reads;
  @override
  State<ViewNovel_Page> createState() => _ViewNovel_PageState();
}

bool ontap = false;

class _ViewNovel_PageState extends State<ViewNovel_Page> {
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/${widget.image}",
                    width: width * 0.35,
                    height: height * 0.25,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                child: Text(
                  "${widget.name} | Author -Charles Dickens",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              SizedBox(
                width: width * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: height * 0.06,
                            width: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xffFFFDFD),
                                border: Border.all(
                                    color: const Color(0xffEBE6E8), width: 2)),
                            child: const Icon(
                              Icons.star_border_outlined,
                              color: Color(0xff0D2063),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Text(
                            "4.7",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff343232)),
                          ),
                        ),
                        Text(
                          "Ratings",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff514D4C)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: height * 0.06,
                            width: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xffFFFDFD),
                                border: Border.all(
                                    color: const Color(0xffEBE6E8), width: 2)),
                            child: Center(
                              child: SizedBox(
                                height: height * 0.025,
                                width: height * 0.025,
                                child: SvgPicture.asset(
                                  "assets/images/books.svg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Text(
                            "${widget.reads}k",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: const Color(0xff343232)),
                          ),
                        ),
                        Text(
                          "Reads",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xff514D4C)),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            height: height * 0.06,
                            width: height * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xffFFFDFD),
                                border: Border.all(
                                    color: const Color(0xffEBE6E8), width: 2)),
                            child: Center(
                              child: SizedBox(
                                height: height * 0.025,
                                width: height * 0.025,
                                child: SvgPicture.asset(
                                  "assets/images/time.svg",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Text("Weekly",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: const Color(0xff343232))),
                        ),
                        Text("Uploads",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color(0xff514D4C)))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Text(
                  "A Tale of Two Cities was first published as a serial in Charles Dickens’s new weekly periodical All the Year Round, from April to November 1859 in 45 chapters, which appeared ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color.fromRGBO(0, 0, 0, 0.75)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Show more",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color(0xff3554C2)),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.025),
                        child: CircleAvatar(
                          radius: width * 0.06,
                          child: Image.asset(
                            "assets/images/novelprofile.png",
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Charles Dickens",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          Text(
                            "1K Followers",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Author_Page()));
                      },
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color.fromRGBO(13, 32, 99, 0.5))),
                      child: Text(
                        "More Info",
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.03),
                child: SizedBox(
                  width: width * 0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  ontap = !ontap;
                                });
                              },
                              child: Text(
                                "Chapters(120)",
                                style: ontap == true
                                    ? GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color.fromRGBO(0, 0, 0, 0.75))
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
                                        color: const Color.fromRGBO(0, 0, 0, 0.75))
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
                  ? Chapter(
                      image: widget.image,
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.025),
                          child: Text(
                            "Top Reviews",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 17),
                          ),
                        ),
                        const BookReviews_Page(),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
