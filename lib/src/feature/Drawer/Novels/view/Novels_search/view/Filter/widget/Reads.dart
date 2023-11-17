// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reads extends StatefulWidget {
  const Reads({super.key});

  @override
  State<Reads> createState() => _ReadsState();
}

bool reads1 = false;
bool reads2 = false;
bool reads3 = false;
bool reads4 = false;
bool reads5 = false;
bool reads6 = false;
bool reads7 = false;
bool reads8 = false;
bool reads9 = false;
bool reads10 = false;
bool reads11 = false;
bool reads12 = false;
bool reads13 = false;

class _ReadsState extends State<Reads> {
  @override
  void initState() {
    super.initState();
    reads1 = false;
    reads2 = false;
    reads3 = false;
    reads4 = false;
    reads5 = false;
    reads6 = false;
    reads7 = false;
    reads8 = false;
    reads9 = false;
    reads10 = false;
    reads11 = false;
    reads12 = false;
    reads13 = false;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Checkbox(
                  value: reads1,
                  onChanged: (value) {
                    setState(() {
                      reads1 = value!;
                      reads2 = value;
                      reads3 = value;
                      reads4 = value;
                      reads5 = value;
                      reads6 = value;
                      reads7 = value;
                      reads8 = value;
                      reads9 = value;
                      reads10 = value;
                      reads11 = value;
                      reads12 = value;
                      reads13 = value;
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
                  value: reads2,
                  onChanged: (value) {
                    setState(() {
                      reads2 = value!;
                    });
                  },
                ),
                Text('10k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads3,
                  onChanged: (value) {
                    setState(() {
                      reads3 = value!;
                    });
                  },
                ),
                Text('9k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads4,
                  onChanged: (value) {
                    setState(() {
                      reads4 = value!;
                    });
                  },
                ),
                Text('8k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads5,
                  onChanged: (value) {
                    setState(() {
                      reads5 = value!;
                    });
                  },
                ),
                Text('7k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16)),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads6,
                  onChanged: (value) {
                    setState(() {
                      reads6 = value!;
                    });
                  },
                ),
                Text('6k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads7,
                  onChanged: (value) {
                    setState(() {
                      reads7 = value!;
                    });
                  },
                ),
                Text('5k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads8,
                  onChanged: (value) {
                    setState(() {
                      reads8 = value!;
                    });
                  },
                ),
                Text('4k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads9,
                  onChanged: (value) {
                    setState(() {
                      reads9 = value!;
                    });
                  },
                ),
                Text('3k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads10,
                  onChanged: (value) {
                    setState(() {
                      reads10 = value!;
                    });
                  },
                ),
                Text('2k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads11,
                  onChanged: (value) {
                    setState(() {
                      reads11 = value!;
                    });
                  },
                ),
                Text('1k above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads11,
                  onChanged: (value) {
                    setState(() {
                      reads11 = value!;
                    });
                  },
                ),
                Text('500 above',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 16))
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: reads11,
                  onChanged: (value) {
                    setState(() {
                      reads11 = value!;
                    });
                  },
                ),
                Text('100 above',
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
