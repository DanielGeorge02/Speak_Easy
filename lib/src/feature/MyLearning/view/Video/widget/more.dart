// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/view/Cerificate.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/widget/dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class More_video extends StatefulWidget {
  const More_video({super.key});

  @override
  State<More_video> createState() => _More_videoState();
}

class _More_videoState extends State<More_video> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more1.png"),
                ),
                Text(
                  "About this Course",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more2.png"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Certificate_Page()));
                  },
                  child: Text(
                    "Course Certificate",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more3.png"),
                ),
                Text(
                  "Share this Course",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more4.png"),
                ),
                Text(
                  "Notes",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more5.png"),
                ),
                Text(
                  "Resourses",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more6.png"),
                ),
                Text(
                  "Announcements",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset("assets/images/more7.png"),
                ),
                Text(
                  "Add Course to favorites",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset("assets/images/more8.png"),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    barrierColor: Colors.black26,
                    context: context,
                    builder: (context) {
                      return const custom_alert_dialog();
                    },
                  );
                },
                child: Text(
                  "Report a playback problem",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
