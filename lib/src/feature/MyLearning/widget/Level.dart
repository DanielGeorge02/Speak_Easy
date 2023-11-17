// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Level_Filter extends StatefulWidget {
  const Level_Filter({super.key});

  @override
  State<Level_Filter> createState() => _Level_FilterState();
}

class _Level_FilterState extends State<Level_Filter> {
  bool language1 = false;
  bool language2 = false;
  bool language3 = false;
  bool language4 = false;
  bool language5 = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: Column(children: [
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
              Text('Beginner',
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
              Text('Intermediate',
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
              Text('Advanced',
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
              Text('Mixed',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
        ]),
      ),
    );
  }
}
