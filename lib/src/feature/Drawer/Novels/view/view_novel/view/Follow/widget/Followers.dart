// ignore_for_file: camel_case_types, must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Followers_widget extends StatefulWidget {
  Followers_widget(
      {super.key,
      required this.image,
      required this.name,
      required this.followers});
  var image;
  var name;
  var followers;
  @override
  State<Followers_widget> createState() => _Followers_widgetState();
}

class _Followers_widgetState extends State<Followers_widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.025),
      child: Container(
          width: width * 0.9,
          height: height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffF8FAFC),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.02),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color(0xffF8FAFC),
                      child: Image.asset(
                        "assets/images/${widget.image}",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.name,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xff0A1629)),
                      ),
                      Text(
                        "${widget.followers}k Followers",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: const Color(0xff7D8592)),
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff0D2063))),
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color.fromRGBO(226, 232, 240, 1)),
                  ))
            ],
          )),
    );
  }
}
