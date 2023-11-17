// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryInfo_Page extends StatefulWidget {
  const DeliveryInfo_Page({super.key});

  @override
  State<DeliveryInfo_Page> createState() => _DeliveryInfo_PageState();
}

class _DeliveryInfo_PageState extends State<DeliveryInfo_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: width * 0.21,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Center(
              child: Text(
                "Close",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color(0xff0D2063)),
              ),
            )),
        title: Text(
          "Delivery Information",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: const Color(0xff0C2638)),
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.015, bottom: height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order ID",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xff0C2638)),
                      ),
                      Text(
                        "902345670232",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xff0C2638)),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.11,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.02),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "16 Jul",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "20:53",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color(0xff85939B)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                              // color: Colors.amber,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                VerticalDivider(
                                    thickness: 3,
                                    color: const Color(0xffF2F3F4),
                                    indent: height * 0.065),
                                Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.circle,
                                      size: height * 0.03,
                                      color: const Color(0xff0D2063),
                                    )),
                              ]),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.55,
                              color: const Color(0xffF6F6F5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    child: Text(
                                      "Order Delivered",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: const Color(0xff0C2638)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.02),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "16 Jul",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "20:53",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color(0xff85939B)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                const VerticalDivider(
                                  thickness: 3,
                                  color: Color(0xffF2F3F4),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: height * 0.02,
                                  color: const Color(0xff858FB0),
                                ),
                              ]),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.55,
                              color: const Color(0xffF6F6F5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    child: Text(
                                      "Order Delivered",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: const Color(0xff0C2638)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.02),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "16 Jul",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "20:53",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color(0xff85939B)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                const VerticalDivider(
                                  thickness: 3,
                                  color: Color(0xffF2F3F4),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: height * 0.02,
                                  color: const Color(0xff858FB0),
                                ),
                              ]),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.55,
                              color: const Color(0xffF6F6F5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    child: Text(
                                      "Order Delivered",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: const Color(0xff0C2638)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.02),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "16 Jul",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "20:53",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color(0xff85939B)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                const VerticalDivider(
                                  thickness: 3,
                                  color: Color(0xffF2F3F4),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: height * 0.02,
                                  color: const Color(0xff858FB0),
                                ),
                              ]),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.55,
                              color: const Color(0xffF6F6F5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    child: Text(
                                      "Order Delivered",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: const Color(0xff0C2638)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.11,
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0.02),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.05),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "16 Jul",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "20:53",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        color: const Color(0xff85939B)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                VerticalDivider(
                                  thickness: 3,
                                  endIndent: height * 0.055,
                                  color: const Color(0xffF2F3F4),
                                ),
                                Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      color: const Color(0xff858FB0),
                                      Icons.circle,
                                      size: height * 0.02,
                                    )),
                              ]),
                            ),
                            Container(
                              height: height * 0.07,
                              width: width * 0.55,
                              color: const Color(0xffF6F6F5),
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.04),
                                    child: Text(
                                      "Order Delivered",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: const Color(0xff0C2638)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
