// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Filter_controller.dart';
import 'package:google_fonts/google_fonts.dart';
 bool language1 = false;
  bool language2 = false;
  bool language3 = false;
  bool language4 = false;
  bool language5 = false;
  bool language6 = false;
  bool language7 = false;
class Rating_Filter extends ConsumerStatefulWidget {
  const Rating_Filter({super.key});

  @override
  ConsumerState<Rating_Filter> createState() => _Rating_FilterState();
}

class _Rating_FilterState extends ConsumerState<Rating_Filter> {
 
  @override
  initState() {
    super.initState();
    if (ref.read(FilterProvider) == true) language1 = false;
    language2 = false;
    language3 = false;
    language4 = false;
    language5 = false;
    language6 = false;
    language7 = false;
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
                  value: 
                  
                  language1,
                  onChanged: (value) {
                    setState(() {
                      
                      language1 = value!;
                      language2 = value;
                      language3 = value;
                      language4 = value;
                      language5 = value;
                      language6 = value;
                      language7 = value;
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
                  value: language2,
                  onChanged: (value) {
                    setState(() {
                      language2 = value!;
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
                  value: language3,
                  onChanged: (value) {
                    setState(() {
                      language3 = value!;
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
                  value: language4,
                  onChanged: (value) {
                    setState(() {
                      language4 = value!;
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
                  value: language5,
                  onChanged: (value) {
                    setState(() {
                      language5 = value!;
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
                  value: language6,
                  onChanged: (value) {
                    setState(() {
                      language6 = value!;
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
