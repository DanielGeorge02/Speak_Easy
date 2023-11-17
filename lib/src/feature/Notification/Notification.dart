// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notification_Page extends StatefulWidget {
  const Notification_Page({super.key});

  @override
  State<Notification_Page> createState() => _Notification_PageState();
}

class _Notification_PageState extends State<Notification_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leadingWidth: width * 0.18,
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
          "Notifications",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: height * 0.01, top: height * 0.01),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: width * 0.1,
                          backgroundImage:
                              const AssetImage("assets/images/offer.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    height: height * 0.11,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Hurray! You got a 10% offer for French Language",
                            style: GoogleFonts.nunitoSans(
                                color: const Color(0xff0A1629),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Use Code: ILOVEFRENCH",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xff7D8592)),
                              ),
                              Text(
                                "30mins ago",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xff7D8592)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.01),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: width * 0.1,
                          backgroundImage:
                              const AssetImage("assets/images/linguae.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    height: height * 0.11,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05, top: height * 0.01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Your Favorite Instructor added a new course check it out now !",
                            style: GoogleFonts.nunitoSans(
                                color: const Color(0xff0A1629),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Use Code: ILOVEFRENCH",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xff7D8592)),
                              ),
                              Text(
                                "2hrs ago",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xff7D8592)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding:
                  EdgeInsets.only(bottom: height * 0.01, top: height * 0.01),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.amber,
                    height: height * 0.11,
                    width: width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: width * 0.1,
                          backgroundImage:
                              const AssetImage("assets/images/linguae.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.7,
                    height: height * 0.11,
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Your Favorite Instructor added a new course check it out now !",
                            style: GoogleFonts.nunitoSans(
                                color: const Color(0xff0A1629),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Use Code: ILOVEFRENCH",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xff7D8592)),
                              ),
                              Text(
                                "8hrs ago",
                                style: GoogleFonts.nunitoSans(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: const Color(0xff7D8592)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
