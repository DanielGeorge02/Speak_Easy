// ignore_for_file: camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feedback_Page extends StatefulWidget {
  Feedback_Page(
      {super.key,
      required this.image,
      required this.id,
      required this.time,
      required this.comment});
  var image;
  var id;
  var time;
  var comment;
  @override
  State<Feedback_Page> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.1,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: Image.asset("assets/images/${widget.image}"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "@${widget.id}",
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w400, fontSize: 15),
              ),
              Text(
                widget.time,
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(159, 162, 169, 1)),
              ),
              Text(
                widget.comment,
                style: GoogleFonts.urbanist(
                    fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
