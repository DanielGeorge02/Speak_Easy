// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language_Filter extends StatefulWidget {
  const Language_Filter({super.key});

  @override
  State<Language_Filter> createState() => _Language_FilterState();
}

class _Language_FilterState extends State<Language_Filter> {
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
                Text('English',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
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
                Text('French',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
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
                Text('German',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
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
                Text('Japanese',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
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
                Text('Korean',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
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
                Text('Chinese',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
