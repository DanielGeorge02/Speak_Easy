// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Video/view/Report.dart';
import 'package:google_fonts/google_fonts.dart';

class custom_alert_dialog extends StatefulWidget {
  const custom_alert_dialog({super.key});

  @override
  State<custom_alert_dialog> createState() => _custom_alert_dialogState();
}

class _custom_alert_dialogState extends State<custom_alert_dialog> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Report_Page()));
      },
      child: Dialog(
        
        elevation: 0,
        backgroundColor: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: width,
                height: height * 0.07,
                decoration: const BoxDecoration(
                  color: Color(0xff0D2163),
                ),
                child: Center(
                  child: Text(
                    "Report a Bug",
                    style: GoogleFonts.urbanist(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Text(
                        "Lecture Resources",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Text(
                      "After reporting a bug, please visit our website to access the file",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Text(
                        "Playback Error",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Text(
                      "Issues related to lecture playback ad lecture downloads",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Text(
                        "Course Completion & Certificates",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Text(
                      "After reporting the bug, please visit our website to access the certificate",
                      style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w400, fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Text(
                        "Other",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Text(
                        "For issues that need a response, open a ticket (Sidebar > Help and support)",
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: InkWell(
                  highlightColor: Colors.grey[200],
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.urbanist(
                        fontSize: 20.0,
                        color: const Color(0xff0D2163),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
