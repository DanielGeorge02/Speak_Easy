// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Certificate_Page extends StatefulWidget {
  const Certificate_Page({super.key});

  @override
  State<Certificate_Page> createState() => _Certificate_PageState();
}

class _Certificate_PageState extends State<Certificate_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leadingWidth: 75,
        toolbarHeight: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 23.0, top: 8),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE8ECF4)),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Certificate",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.file_upload_outlined,
                    color: Color(0xff001A72),
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          children: [
            SizedBox(
                width: width,
                child: Image.asset(
                  "assets/images/certificate.png",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: EdgeInsets.only(top: height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff0D2063))),
                      onPressed: () {},
                      child: Text(
                        "View Certificate",
                        style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )),
                  ElevatedButton(
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff0D2063))),
                      onPressed: () {},
                      child: Text(
                        "Download Certificate",
                        style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
