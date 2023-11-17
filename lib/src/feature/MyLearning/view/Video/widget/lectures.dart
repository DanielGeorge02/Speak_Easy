// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lectures extends StatefulWidget {
  const Lectures({super.key});

  @override
  State<Lectures> createState() => _LecturesState();
}

List video = [
  ["Session 1.Introduction", "00:45", "1"],
  ["Nouns", "03:46", "1"],
  ["Articles", "02:32", "1"],
  ["Quantifiers", "04:45", "2"],
  ["Pronouns Pt.1", "05:38", "1"],
  ["Pronouns Pt.2", "07:42", "1"],
  ["Adjectives", "05:53", "1"],
  ["Comparatives & Superlatives", "10:21", "1"],
  ["Adverbs", "05:12", "1"],
  ["Prepositions", "12:24", "1"],
  ["Verbs", "9:34", "1"],
];
var bgcolor = {
  0: false,
  1: false,
  2: false,
  3: false,
  4: false,
  5: false,
  6: false,
  7: true,
  8: false,
  9: false,
  10: false,
};

@override
class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Section 1-English Grammar",
                style: GoogleFonts.urbanist(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              Image.asset("assets/images/download.png")
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 11,
                    itemBuilder: (context, position) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            switch (position) {
                              case 0:
                                setState(() {
                                  bgcolor[0] = true;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });

                                break;
                              case 1:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = true;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 2:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = true;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 3:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = true;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 4:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = true;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 5:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = true;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 6:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = true;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 7:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = true;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 8:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = true;
                                  bgcolor[9] = false;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 9:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = true;
                                  bgcolor[10] = false;
                                });
                                break;
                              case 10:
                                setState(() {
                                  bgcolor[0] = false;
                                  bgcolor[1] = false;
                                  bgcolor[2] = false;
                                  bgcolor[3] = false;
                                  bgcolor[4] = false;
                                  bgcolor[5] = false;
                                  bgcolor[6] = false;
                                  bgcolor[7] = false;
                                  bgcolor[8] = false;
                                  bgcolor[9] = false;
                                  bgcolor[10] = true;
                                });
                                break;
                              default:
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Container(
                            color: bgcolor[position] == true
                                ? const Color(0xffE9EDFD)
                                : Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        (position + 1).toString(),
                                        style: GoogleFonts.urbanist(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          video[position][0],
                                          style: GoogleFonts.urbanist(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "${"Video - " + video[position][1]} mins remaining - Resourses(${video[position][2]})",
                                          style: GoogleFonts.urbanist(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Image.asset("assets/images/download.png")
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section 2 - English Conversation",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Image.asset("assets/images/download.png")
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section 3 - Reading and Listening",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Image.asset("assets/images/download.png")
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section 4 - Pronunciation",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Image.asset("assets/images/download.png")
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section 5 - Advanced English",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Image.asset("assets/images/download.png")
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Section 6 - Bonus: Master Native",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Image.asset("assets/images/download.png")
                    ],
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
