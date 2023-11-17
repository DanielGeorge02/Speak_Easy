// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/widget/Reviews/widget/Review.dart';

class BookReviews_Page extends StatefulWidget {
  const BookReviews_Page({super.key});

  @override
  State<BookReviews_Page> createState() => _BookReviews_PageState();
}

class _BookReviews_PageState extends State<BookReviews_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Review_Widget(
          image: "bookavatar1.png",
          comment:
              "I Have felt as if I were in every room with the characters, worrying and celebrating along with them",
          date: "29.08.22",
          like: "73",
          name: "Jack Jones",
        ),
        Review_Widget(
          image: "bookavatar2.png",
          comment: "The story line is too good Waiting for new epsiodes",
          date: "23.08.22",
          like: "12",
          name: "Maha",
        ),
        Review_Widget(
          image: "bookavatar4.png",
          comment: "The story line is too good Waiting for new epsiodes",
          date: "23.06.22",
          like: "73",
          name: "Priyanaka_mohan",
        ),
        Review_Widget(
          image: "bookavatar5.png",
          comment:
              "I Have felt as if I were in every room with the characters, worrying and celebrating along with them",
          date: "21.06.22",
          like: "73",
          name: "David",
        ),
      ],
    );
  }
}
