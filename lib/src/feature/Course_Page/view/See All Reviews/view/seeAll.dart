// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/feedback.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAllReview extends StatefulWidget {
  static const routePath = "/seeallreview";
  const SeeAllReview({super.key});

  @override
  State<SeeAllReview> createState() => _SeeAllReviewState();
}

class _SeeAllReviewState extends State<SeeAllReview> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leadingWidth: 75,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0, top: 8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE8ECF4)),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Reviews",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23.0, right: 23, top: 44),
            child: Column(
              children: [
                Feedback_Page(
                    image: "feedback4.png",
                    id: "moulika_shetty",
                    time: "31 mins ago",
                    comment: "Great Teacher"),
                Feedback_Page(
                    image: "feedback5.png",
                    id: "stefen_sammy",
                    time: "4 months ago",
                    comment: "Mindblowing Stuff....!"),
                Feedback_Page(
                    image: "feedback3.png",
                    id: "damon_salavtore",
                    time: "9 months ago",
                    comment: "Thank you Linguae for teaching us"),
                Feedback_Page(
                    image: "feedback4.png",
                    id: "moulika_shetty",
                    time: "31 mins ago",
                    comment: "Great Teacher"),
                Feedback_Page(
                    image: "feedback5.png",
                    id: "stefen_sammy",
                    time: "4 months ago",
                    comment: "Mindblowing Stuff....!"),
                Feedback_Page(
                    image: "feedback3.png",
                    id: "damon_salavtore",
                    time: "9 months ago",
                    comment: "Thank you Linguae for teaching us"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: SizedBox(
              width: Width * 0.7,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(217, 217, 217, 1))),
                child: Text(
                  "Add Review",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(53, 84, 194, 1)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
