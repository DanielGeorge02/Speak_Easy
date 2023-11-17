// ignore_for_file: file_names, camel_case_types

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Report_Page extends StatefulWidget {
  const Report_Page({super.key});

  @override
  State<Report_Page> createState() => _Report_PageState();
}

class _Report_PageState extends State<Report_Page> {
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
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset("assets/images/cancel.png")),
        centerTitle: true,
        title: Text(
          "Courses",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 23.0),
              child: Image.asset("assets/images/share.png"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            TextField(
              decoration: InputDecoration(
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9A9A9A))),
                hintText: "Enter your Email",
                hintStyle: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff9A9A9A)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19.0),
              child: Text(
                "Description",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff9A9A9A))),
                hintText:
                    "Please be as detailed as possible. What did you expect and what happened instead?",
                hintMaxLines: 2,
                hintStyle: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: const Color(0xff9A9A9A)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27.0),
              child: DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  child: Container(
                    width: width * 0.35,
                    height: height * 0.05,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: const Row(
                        children: [
                          Icon(Icons.add),
                          Text("Upload Image"),
                        ],
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
