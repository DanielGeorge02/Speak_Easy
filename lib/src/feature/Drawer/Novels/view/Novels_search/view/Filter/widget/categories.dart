import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

bool category1 = false;
bool category2 = false;
bool category3 = false;
bool category4 = false;
bool category5 = false;
bool category6 = false;
bool category7 = false;
bool category8 = false;
bool category9 = false;
bool category10 = false;
bool category11 = false;

class _CategoriesState extends State<Categories> {
  @override
  @override
  void initState() {
    super.initState();
    category1 = false;
    category2 = false;
    category3 = false;
    category4 = false;
    category5 = false;
    category6 = false;
    category7 = false;
    category8 = false;
    category9 = false;
    category10 = false;
    category11 = false;
  }

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
                value: category1,
                onChanged: (value) {
                  setState(() {
                    category1 = value!;
                    category2 = value;
                    category3 = value;
                    category4 = value;
                    category5 = value;
                    category6 = value;
                    category7 = value;
                    category8 = value;
                    category9 = value;
                    category10 = value;
                    category11 = value;
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
                value: category2,
                onChanged: (value) {
                  setState(() {
                    category2 = value!;
                  });
                },
              ),
              Text('Science Fiction',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category3,
                onChanged: (value) {
                  setState(() {
                    category3 = value!;
                  });
                },
              ),
              Text('Mystery',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category4,
                onChanged: (value) {
                  setState(() {
                    category4 = value!;
                  });
                },
              ),
              Text('Horror',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category5,
                onChanged: (value) {
                  setState(() {
                    category5 = value!;
                  });
                },
              ),
              Text('Non-fiction',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16)),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category6,
                onChanged: (value) {
                  setState(() {
                    category6 = value!;
                  });
                },
              ),
              Text('Romance',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category7,
                onChanged: (value) {
                  setState(() {
                    category7 = value!;
                  });
                },
              ),
              Text('Historical Fiction',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category8,
                onChanged: (value) {
                  setState(() {
                    category8 = value!;
                  });
                },
              ),
              Text('Thriller',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category9,
                onChanged: (value) {
                  setState(() {
                    category9 = value!;
                  });
                },
              ),
              Text('Fairy Tale',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category10,
                onChanged: (value) {
                  setState(() {
                    category10 = value!;
                  });
                },
              ),
              Text('Science',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: category11,
                onChanged: (value) {
                  setState(() {
                    category11 = value!;
                  });
                },
              ),
              Text('Drama',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300, fontSize: 16))
            ],
          ),
        ]),
      ),
    );
  }
}
