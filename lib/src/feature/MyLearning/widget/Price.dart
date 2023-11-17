// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Price_Filter extends StatefulWidget {
  const Price_Filter({super.key});

  @override
  State<Price_Filter> createState() => _Price_FilterState();
}

class _Price_FilterState extends State<Price_Filter> {
  bool language1 = false;
  bool language2 = false;
  bool language3 = false;
  bool language4 = false;
  bool language5 = false;
  bool language6 = false;
  bool language7 = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: language1,
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
                Text('Select All',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 16))
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
                Text('\u{20B9}${1999} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
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
                Text('\u{20B9}${1499} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
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
                Text('\u{20B9}${999} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
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
                Text('\u{20B9}${499} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
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
                Text('\u{20B9}${399} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: language7,
                  onChanged: (value) {
                    setState(() {
                      language7 = value!;
                    });
                  },
                ),
                Text('\u{20B9}${199} above',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
