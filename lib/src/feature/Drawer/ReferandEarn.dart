// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'package:google_fonts/google_fonts.dart';

class ReferandEarn_Page extends StatefulWidget {
  const ReferandEarn_Page({super.key});
  static const routepath = "/referandearn";
  @override
  State<ReferandEarn_Page> createState() => _ReferandEarn_PageState();
}

class _ReferandEarn_PageState extends State<ReferandEarn_Page> {
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
            "Refer n Earn",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.05),
                child: Container(
                  width: width,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 177, 172, 172), // Shadow color
                        offset: Offset(0, 5), // bottom side shadow
                        blurRadius: 4, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.grey, // Shadow color
                        offset: Offset(-0, 0), // Left side shadow
                        blurRadius: 2, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.grey, // Shadow color
                        offset: Offset(0, 0), // Right side shadow
                        blurRadius: 2, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.white, // Shadow color
                        offset: Offset(0, -5), // top side shadow
                        spreadRadius: 0,
                        blurRadius: 0, // Spread of the shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Earn Exciting offers',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.01),
                        child: Text(
                          "by sharing SpeakEasy app with your friends",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.005),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xff868FB1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8))),
                                width: width * 0.57,
                                height: height * 0.05,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/link.png",
                                    ),
                                    Text(
                                      "https://SpeakEasy.com/abcd",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.015),
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xff0D2063),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8))),
                                width: width * 0.10,
                                height: height * 0.05,
                                child: Image.asset(
                                  "assets/images/copy.png",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xff0D2063),
                              child: Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Container(
                  width: width,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff858FB0)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.03),
                          child: Image.asset(
                              "assets/images/referandearnprofile.png"),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Help others by',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15)),
                              TextSpan(
                                  text: ' inviting them',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: const Color(0xff0D2063))),
                            ],
                          ),
                        ),
                      ]),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: Container(
                  width: width,
                  height: height * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color:
                            Color.fromARGB(255, 177, 172, 172), // Shadow color
                        offset: Offset(0, 5), // bottom side shadow
                        blurRadius: 4, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.grey, // Shadow color
                        offset: Offset(-0, 0), // Left side shadow
                        blurRadius: 2, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.grey, // Shadow color
                        offset: Offset(0, 0), // Right side shadow
                        blurRadius: 2, // Spread of the shadow
                      ),
                      BoxShadow(
                        color: Colors.white, // Shadow color
                        offset: Offset(0, -5), // top side shadow
                        spreadRadius: 0,
                        blurRadius: 0, // Spread of the shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.035),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height * 0.03,
                                  backgroundColor: const Color(0xff0D2063),
                                  child: const Icon(
                                    Icons.share_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                Dash(
                                    direction: Axis.vertical,
                                    length: height * 0.08,
                                    dashLength: width * 0.01,
                                    dashColor: Colors.black),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.65,
                              height: height * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Share',
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color:
                                                    const Color(0xff166B7D))),
                                        TextSpan(
                                            text: ' SpeakEasy App',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.38,
                                    child: Text(
                                      "share the link to as many friends and family",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                    radius: height * 0.03,
                                    backgroundColor: const Color(0xff0D2063),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: width * 0.015),
                                      child: Image.asset(
                                          "assets/images/refer1.png"),
                                    )),
                                Dash(
                                    direction: Axis.vertical,
                                    length: height * 0.08,
                                    dashLength: width * 0.01,
                                    dashColor: Colors.black),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.65,
                              height: height * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Friend makes ',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            )),
                                        TextSpan(
                                            text: 'first purchase',
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color:
                                                    const Color(0xff166B7D))),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.65,
                                    child: Text(
                                      "They need to make any purchase complete verification using your referral link.",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                                radius: height * 0.03,
                                backgroundColor: const Color(0xff0D2063),
                                child: Padding(
                                  padding: EdgeInsets.only(left: width * 0.015),
                                  child:
                                      Image.asset("assets/images/refer2.png"),
                                )),
                            SizedBox(
                              width: width * 0.65,
                              height: height * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Get',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                            )),
                                        TextSpan(
                                            text: ' Exciting voucher',
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 17,
                                                color:
                                                    const Color(0xff166B7D))),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.47,
                                    child: Text(
                                      "You and your friend both get the Vouchers",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
