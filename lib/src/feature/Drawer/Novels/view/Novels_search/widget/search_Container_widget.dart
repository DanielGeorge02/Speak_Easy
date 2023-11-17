// ignore_for_file: camel_case_types, must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchNovel_widget extends StatefulWidget {
  SearchNovel_widget(
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
  State<SearchNovel_widget> createState() => _SearchNovel_widgetState();
}

class _SearchNovel_widgetState extends State<SearchNovel_widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.075),
      child: SizedBox(
        width: width,
        height: height * 0.11,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child: Image.asset("assets/images/${widget.image}"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      itemSize: height * 0.03,
                      itemBuilder: (context, _) => const Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xffFF9E0C),
                          ),
                      onRatingUpdate: (rating) {}),
                  Text(
                    "${widget.episodes} Episodes",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(0, 0, 0, 0.75)),
                  ),
                  Text(
                    "${widget.reads} Reads",
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color.fromRGBO(0, 0, 0, 0.75)),
                  )
                ],
              )
            ]),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_rounded))
          ],
        ),
      ),
    );
  }
}
