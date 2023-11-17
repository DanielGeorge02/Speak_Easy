// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/controller/HomepopupController.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/view/Report.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepopup extends ConsumerWidget {
  const Homepopup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    return Dialog(
      elevation: 0,
      backgroundColor: const Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/homepopup.png",
                    height: height * 0.315,
                  ),
                ),
              ),
              Positioned(
                  right: 0,
                  child: IconButton(
                      onPressed: () {
                        ref.read(HomepopupController.notifier).state = false;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage()));
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.grey,
                      )))
            ]),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/SpeakEasy.in.svg",
                    height: height * 0.035,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.02),
                    child: Column(
                      children: [
                        Text(
                          "APPLICABLE FOR ALL",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w400, fontSize: 24),
                        ),
                        Text(
                          "NEW USERS",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w400, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Column(
                    children: [
                      Text(
                        "AVAIL 10% DISCOUNT",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: const Color(0xff2B45CC)),
                      ),
                      Text(
                        "ON ANY COURSE",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: const Color(0xff2B45CC)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(bottom: height * 0.05, top: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "USE CODE: NEWUSER10",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 15),
                  ),
                  Image.asset(
                    "assets/images/copy.png",
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
