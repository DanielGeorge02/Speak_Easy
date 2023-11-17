// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Review_Widget extends StatefulWidget {
  Review_Widget(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      required this.comment,
      required this.like});
  var image;
  var name;
  var date;
  var comment;
  var like;
  @override
  State<Review_Widget> createState() => _Review_WidgetState();
}

class _Review_WidgetState extends State<Review_Widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.02),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/images/${widget.image}",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("@${widget.name}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color.fromRGBO(52, 50, 50, 1))),
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
                    ],
                  )
                ],
              ),
              Text(
                widget.date,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: const Color(0xff514D4C)),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.13),
            child: SizedBox(
              width: width * 0.75,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.01),
                    child: Text(
                      widget.comment,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color(0xff343232)),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.125),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: width * 0.01),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                    weight: 0.1,
                    size: 17,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: Text(
                    widget.like,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * 0.01),
                  child: Image.asset("assets/images/share1.png"),
                ),
                Text(
                  "Replies(5)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 13),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
