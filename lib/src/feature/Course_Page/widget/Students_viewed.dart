// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Students_viewed extends StatefulWidget {
  Students_viewed({
    super.key,
    required this.title,
    required this.rating,
    required this.rates,
    required this.text,
    required this.price,
    required this.mrp,
    required this.image,
  });
  var title;
  var rating;
  var rates;
  var text;
  var price;
  var mrp;
  var image;

  @override
  State<Students_viewed> createState() => _Students_viewedState();
}

class _Students_viewedState extends State<Students_viewed> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 9.0),
            child: SizedBox(
              height: height * 0.10,
              width: width * 0.20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/${widget.image}",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.rating,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 13),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: RatingBar.builder(
                            initialRating: 4.5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: height * 0.03,
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (rating) {}),
                      ),
                      Text(
                        "(${widget.rates})",
                        style: const TextStyle(
                            fontSize: 9, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  widget.text != ""
                      ? Text(
                          widget.text,
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w500, fontSize: 12),
                        )
                      : Container(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text(
                          "\u{20B9}${widget.price}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Text(
                        "\u{20B9}${widget.mrp}",
                        style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
