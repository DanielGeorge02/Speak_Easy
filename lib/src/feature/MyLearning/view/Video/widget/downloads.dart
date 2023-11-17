// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Downloads extends StatefulWidget {
  const Downloads({super.key});

  @override
  State<Downloads> createState() => _DownloadsState();
}

List video = [
  ["Adverbs", "05:12", "1"],
  ["Prepositions", "12:24", "1"],
  ["Verbs", "9:34", "1"],
];

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          (position + 1).toString(),
                          style: GoogleFonts.urbanist(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video[position][0],
                            style: GoogleFonts.urbanist(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${"Video - " + video[position][1]} mins remaining - Resourses(${video[position][2]})",
                            style: GoogleFonts.urbanist(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/images/download.png")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
