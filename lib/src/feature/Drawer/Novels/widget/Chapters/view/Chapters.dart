// ignore_for_file: must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Chapters/view/viewChapters.dart';
import 'package:google_fonts/google_fonts.dart';

class Chapter extends StatefulWidget {
  Chapter({super.key, required this.image});

  var image;
  @override
  State<Chapter> createState() => _ChapterState();
}

List chapter = [
  "Introduction",
  "The Period",
  "The Mail",
  "The Night Shadows",
  "The Preparation",
  "The Wine-shop",
  "Five Years Later",
  "A Sight",
  "A Disappointment",
  "Congratulatory",
  "Introduction",
  "The Period",
  "The Mail",
  "The Night Shadows",
  "The Preparation",
  "The Wine-shop",
  "Five Years Later",
  "A Sight",
  "A Disappointment",
  "Congratulatory"
];

class _ChapterState extends State<Chapter> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 20,
      itemBuilder: (context, position) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ViewChapter_Page(
                            name: chapter[position],
                          )));
            },
            child: SizedBox(
              height: height * 0.055,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          position == 9 || position == 19
                              ? "X"
                              : (position + 1).toString()[
                                  (position + 1).toString().length - 1],
                          style: GoogleFonts.urbanist(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: width * 0.03, left: width * 0.05),
                            child: Image.asset("assets/images/${widget.image}"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chapter[position],
                                style: GoogleFonts.urbanist(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1.8k Reads",
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.01),
                                    child: const Icon(
                                      Icons.circle,
                                      size: 7,
                                    ),
                                  ),
                                  Text(
                                    "1 yr ago",
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
