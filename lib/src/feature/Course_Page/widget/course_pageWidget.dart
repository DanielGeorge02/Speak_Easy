// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/viewCourse_page.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class viewCourse_value {
  var title;
  var text1;
  var text2;
  var text3;
  var price;
  var mrp;
  var image;
  viewCourse_value(
    this.image,
    this.text1,
    this.price,
    this.mrp,
    this.text2,
    this.text3,
    this.title,
  );
}

class Course_widget extends StatefulWidget {
  Course_widget(
      {super.key,
      required this.title,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.price,
      required this.mrp,
      required this.image});
  var title;
  var text1;
  var text2;
  var text3;
  var price;
  var mrp;
  var image;
  @override
  State<Course_widget> createState() => _Course_widgetState();
}

class _Course_widgetState extends State<Course_widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            viewCourse_value product = viewCourse_value(
              widget.image,
              widget.text1,
              widget.price,
              widget.mrp,
              widget.text2,
              widget.text3,
              widget.title,
            );
            context.push(ViewCourse_page.routePath, extra: product);
          },
          child: Center(
              child: SizedBox(
                  width: width * 0.9,
                  child: Image.asset(
                    "assets/images/${widget.image}",
                    fit: BoxFit.fitWidth,
                  ))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 7),
          child: RichText(
            text: TextSpan(
                text: '${widget.text1}: ',
                style: GoogleFonts.urbanist(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.text2}',
                    style: GoogleFonts.urbanist(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  )
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0),
          child: Row(children: [
            Text(
              "${widget.text3}",
              style: GoogleFonts.urbanist(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(0, 0, 0, 3 / 4)),
            ),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 7),
          child: Row(children: [
            Text(
              "\u{20B9}${499}",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.0),
              child: Text(
                "1999",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                  color: Colors.grey,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
