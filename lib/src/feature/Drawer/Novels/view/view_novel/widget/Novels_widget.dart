// ignore_for_file: must_be_immutable, file_names, prefer_typing_uninitialized_variables, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class WrittenNovels extends StatefulWidget {
  WrittenNovels(
      {super.key,
      required this.image,
      required this.name,
      required this.episodes,
      required this.reads});
  var image;
  var name;
  var episodes;
  var reads;
  @override
  State<WrittenNovels> createState() => _Novels_WidgetState();
}

class _Novels_WidgetState extends State<WrittenNovels> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.03),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.07),
            child: Image.asset(
              "assets/images/${widget.image}",
              height: height * 0.1,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w600, fontSize: 15),
              ),
              RatingBar.builder(
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: height * 0.024,
                  itemBuilder: (context, _) => const Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xffFF9E0C),
                      ),
                  onRatingUpdate: (rating) {}),
              Text(
                "${widget.episodes} Epsiodes",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 0.75)),
              ),
              Text(
                "${widget.reads}K Reads",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color.fromRGBO(0, 0, 0, 0.75)),
              )
            ],
          )
        ],
      ),
    );
  }
}
