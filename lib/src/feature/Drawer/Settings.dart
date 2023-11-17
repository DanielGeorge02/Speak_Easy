// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings_Page extends StatefulWidget {
  const Settings_Page({super.key});
  static const routepath = "/settings";
  @override
  State<Settings_Page> createState() => _Settings_PageState();
}

class _Settings_PageState extends State<Settings_Page> {
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
          "Settings",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            CircleAvatar(
              radius: height * 0.06,
              backgroundImage: const AssetImage("assets/images/profile1.png"),
            ),
            Text(
              " Nick Turner",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 18),
            ),
            Text(
              "nickturner2@gmail.com",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 13),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.01),
              child: SizedBox(
                width: width * 0.37,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff0D2063))),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Edit Profile",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.025),
              child: Container(
                width: width,
                color: const Color(0xffE8ECF4),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.01, horizontal: width * 0.06),
                  child: Text(
                    "CONTENT",
                    style: GoogleFonts.urbanist(
                        color: const Color.fromRGBO(9, 9, 9, 0.5),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset(
                                  "assets/images/changepassword.png"),
                            ),
                            Text(
                              "Change Password",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset("assets/images/download.png"),
                            ),
                            Text(
                              "Downloads",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset("assets/images/privacy.png"),
                            ),
                            Text(
                              "Privacy and Policy",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset("assets/images/aboutus.png"),
                            ),
                            Text(
                              "About Us",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.025),
              child: Container(
                width: width,
                color: const Color(0xffE8ECF4),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.01, horizontal: width * 0.06),
                  child: Text(
                    "PREFERENCES",
                    style: GoogleFonts.urbanist(
                        color: const Color.fromRGBO(9, 9, 9, 0.5),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset("assets/images/language.png"),
                            ),
                            Text(
                              "Language",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.015),
                          child: Row(
                            children: [
                              Text(
                                "English",
                                style: GoogleFonts.urbanist(
                                    color: const Color.fromRGBO(0, 0, 0, 0.5),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset(
                                  "assets/images/notification1.png"),
                            ),
                            Text(
                              "Notifications",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.03),
                              child: Image.asset("assets/images/wifi.png"),
                            ),
                            Text(
                              "Only Download via Wi-Fi",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.03),
                            child: Image.asset("assets/images/playvideo.png"),
                          ),
                          Text(
                            "Play in Background",
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign out",
                    style: GoogleFonts.urbanist(
                        color: const Color(0xff0D2063),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
            ),
            Text(
              "SpeakEasy v8.41.0.1234",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: const Color.fromRGBO(0, 0, 0, 0.5)),
            )
          ],
        ),
      ),
    );
  }
}
