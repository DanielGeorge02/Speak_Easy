// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Filter_controller.dart';
import 'package:google_fonts/google_fonts.dart';

bool rating1 = false;
bool rating2 = false;
bool rating3 = false;
bool rating4 = false;
bool rating5 = false;
bool rating6 = false;

class Rating extends ConsumerStatefulWidget {
  const Rating({super.key});

  @override
  ConsumerState<Rating> createState() => _RatingState();
}

class _RatingState extends ConsumerState<Rating> {
  @override
  initState() {
    super.initState();
    if (ref.read(FilterProvider) == true) rating1 = false;
    rating2 = false;
    rating3 = false;
    rating4 = false;
    rating5 = false;
    rating6 = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: rating1,
                  onChanged: (value) {
                    setState(() {
                      rating1 = value!;
                      rating2 = value;
                      rating3 = value;
                      rating4 = value;
                      rating5 = value;
                      rating6 = value;
                    });
                  },
                ),
                Text(
                  'Select All',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: rating2,
                  onChanged: (value) {
                    setState(() {
                      rating2 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width * 0.32,
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
                  '4.5 above',
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500, fontSize: 16),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: rating3,
                  onChanged: (value) {
                    setState(() {
                      rating3 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width * 0.32,
                  child: RatingBar.builder(
                      initialRating: 4,
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
                Text('4 above',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: rating4,
                  onChanged: (value) {
                    setState(() {
                      rating4 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width * 0.32,
                  child: RatingBar.builder(
                      initialRating: 3,
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
                Text('3 above',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: rating5,
                  onChanged: (value) {
                    setState(() {
                      rating5 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width * 0.32,
                  child: RatingBar.builder(
                      initialRating: 2,
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
                Text('2 above',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: rating6,
                  onChanged: (value) {
                    setState(() {
                      rating6 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width * 0.32,
                  child: RatingBar.builder(
                      initialRating: 1,
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
                Text('1 above',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w500, fontSize: 16))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
