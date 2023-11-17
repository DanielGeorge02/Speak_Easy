// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Author extends StatefulWidget {
  const Author({super.key});

  @override
  State<Author> createState() => _AuthorState();
}

bool author1 = false;
bool author2 = false;
bool author3 = false;
bool author4 = false;
bool author5 = false;
bool author6 = false;
bool author7 = false;
bool author8 = false;
bool author9 = false;
bool author10 = false;
bool author11 = false;
bool author12 = false;

class _AuthorState extends State<Author> {
  @override
  void initState() {
    super.initState();
    author1 = false;
    author2 = false;
    author3 = false;
    author4 = false;
    author5 = false;
    author6 = false;
    author7 = false;
    author8 = false;
    author9 = false;
    author10 = false;
    author11 = false;
    author12 = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: width * 0.035, bottom: height * 0.01),
                  child: Text('Top Authors',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author1,
                  onChanged: (value) {
                    setState(() {
                      author1 = value!;
                    });
                  },
                ),
                Text('Rob',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author2,
                  onChanged: (value) {
                    setState(() {
                      author2 = value!;
                    });
                  },
                ),
                Text('James Gun',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author3,
                  onChanged: (value) {
                    setState(() {
                      author3 = value!;
                    });
                  },
                ),
                Text('Sharukh Khan',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author4,
                  onChanged: (value) {
                    setState(() {
                      author4 = value!;
                    });
                  },
                ),
                Text('Vijay',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author5,
                  onChanged: (value) {
                    setState(() {
                      author5 = value!;
                    });
                  },
                ),
                Text('Rajni',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author6,
                  onChanged: (value) {
                    setState(() {
                      author6 = value!;
                    });
                  },
                ),
                Text('Harsha',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author7,
                  onChanged: (value) {
                    setState(() {
                      author7 = value!;
                    });
                  },
                ),
                Text('Yadhav',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author8,
                  onChanged: (value) {
                    setState(() {
                      author8 = value!;
                    });
                  },
                ),
                Text('Turner',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author9,
                  onChanged: (value) {
                    setState(() {
                      author9 = value!;
                    });
                  },
                ),
                Text('Turner',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author10,
                  onChanged: (value) {
                    setState(() {
                      author10 = value!;
                    });
                  },
                ),
                Text('David',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author11,
                  onChanged: (value) {
                    setState(() {
                      author11 = value!;
                    });
                  },
                ),
                Text('Warner',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: author12,
                  onChanged: (value) {
                    setState(() {
                      author12 = value!;
                    });
                  },
                ),
                Text('Steve Jobs',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
