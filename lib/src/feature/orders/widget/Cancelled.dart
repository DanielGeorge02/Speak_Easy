// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Cancel_Page extends StatefulWidget {
  const Cancel_Page({super.key});

  @override
  State<Cancel_Page> createState() => _Cancel_PageState();
}

class _Cancel_PageState extends State<Cancel_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.03),
      child: Container(
        width: width,
        decoration:
            BoxDecoration(border: Border.all(color: const Color(0xffF2F3F4))),
        // color: Colors.cyanAccent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.02,
                left: width * 0.07,
                right: width * 0.02,
                bottom: height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: SvgPicture.asset("assets/images/cancelled.svg"),
                      ),
                      Text(
                        "You Cancelled the order",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff0C2638),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffF2F3F4)),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "90234567023",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff0D2063),
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color((0xffF2F3F4)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.07, vertical: height * 0.02),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.04),
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.1,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: const Color((0xffF2F3F4)),
                      )),
                      child: Image.asset(
                        "assets/images/book10.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.60,
                    height: height * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fluent Forever By Damon Salvatore",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: const Color(0xff0C2638)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: width * 0.02),
                                  child: Text(
                                    "Qt",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: const Color(0xff85939B)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xffE8ECF4),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(
                                      "x1",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: const Color(0xff0D2063)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "₹999",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xff0C2638)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.07),
              child: const Divider(
                color: Color((0xffF2F3F4)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: width * 0.07,
                  left: width * 0.07,
                  top: height * 0.02,
                  bottom: height * 0.02),
              child: SizedBox(
                // color: Colors.amber,
                height: height * 0.025,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "1 item",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff0D2063),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        const VerticalDivider(),
                        Text(
                          "₹999",
                          style: GoogleFonts.poppins(
                              color: const Color(0xff0D2063),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: height * 0.025,
                          color: const Color(0xff0D2063),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
