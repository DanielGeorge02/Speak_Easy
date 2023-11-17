// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Follow/widget/Followers_list.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Follow/widget/Following.dart';
import 'package:google_fonts/google_fonts.dart';

class Follow_Page extends StatefulWidget {
  const Follow_Page({super.key});

  @override
  State<Follow_Page> createState() => _Follow_PageState();
}

bool ontap = false;

class _Follow_PageState extends State<Follow_Page> {
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
        title: Text(
          "Charles Dickens",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.03),
            child: SizedBox(
              width: width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ontap = !ontap;
                            });
                          },
                          child: Text(
                            "Followers",
                            style: ontap == true
                                ? GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                        ),
                        ontap == false
                            ? const Divider(
                                thickness: 3.5,
                                endIndent: 10,
                                indent: 10,
                                color: Color(0xff0D2063),
                              )
                            : const Divider(
                                thickness: 3.5,
                                endIndent: 20,
                                indent: 20,
                                color: Colors.white,
                              )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ontap = !ontap;
                            });
                          },
                          child: Text(
                            'Following',
                            style: ontap == false
                                ? GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: const Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                        ),
                        ontap == true
                            ? const Divider(
                                thickness: 3.5,
                                endIndent: 20,
                                indent: 20,
                                color: Color(0xff0D2063),
                              )
                            : const Divider(
                                thickness: 3.5,
                                endIndent: 20,
                                indent: 20,
                                color: Colors.white,
                              )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: ontap == false
                      ? const Followerslist_widget()
                      : const Following_list()))
        ],
      ),
    );
  }
}
