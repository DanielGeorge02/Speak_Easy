// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Faq_Page extends StatefulWidget {
  const Faq_Page({super.key});
  static const routepath = "/faq";
  @override
  State<Faq_Page> createState() => _Faq_PageState();
}

class _Faq_PageState extends State<Faq_Page> {
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
        centerTitle: true,
        title: Text(
          "FAQ",
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Books_Page()));
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: width, child: Image.asset("assets/images/faq.png")),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: Column(
                children: [
                  Text(
                    "FAQ",
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff0D2063),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Questions",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: const Color(0xff0D2063)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How to Purchase Course ?",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color(0xff121127)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 40,
                      )
                    ],
                  ),
                  Text(
                      "Open the app and click on the course you want to purchase and then checkout",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xff7A7A86))),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How to Purchase language books ?",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color(0xff121127)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 40,
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Will i get Certificate if I complete course",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color(0xff121127)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 40,
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How to add New Card ?",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color(0xff121127)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 40,
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Is there any free courses in this app",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: const Color(0xff121127)),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 40,
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
