// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/viewCourse_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/course_pageWidget.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class French_Page extends StatefulWidget {
  const French_Page({super.key});

  @override
  State<French_Page> createState() => _French_PageState();
}

List image = [
  "frenchcourse.png",
  "frenchcourse1.png",
  "frenchcourse2.png",
  "frenchcourse1.png",
  "frenchcourse2.png",
];
List content1 = [
  "Complete French Course:",
  "French Language Course for Beginners:",
  "Master French Language Course A-Z™ :",
  "French Language Course for Beginners:",
  "Master French Language Course A-Z™ :"
];
List content2 = [
  "Learn French for Beginners",
  "From Scratch to A1.1",
  "From Scratch to Expert",
  "From Scratch to A1.1",
  "From Scratch to Expert"
];
List creator = [
  "Linguae Learning",
  "Benoit KUHLER",
  "Steve Tanaka",
  "Benoit KUHLER",
  "Steve Tanaka"
];
List price = [
  "999",
  "699",
  "399",
  "399",
  "699",
  "399",
];
List mrp = [
  "2999",
  "2499",
  "1999",
  "2499",
  "1999",
];

class _French_PageState extends State<French_Page> {
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
          "Japanese",
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
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Books_Page()));
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.03),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(bottom: height * 0.02),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewCourse_value value = viewCourse_value(
                            image[index],
                            content1[index],
                            price[index],
                            mrp[index],
                            content2[index],
                            creator[index],
                            "English");
                        context.push(ViewCourse_page.routePath, extra: value);
                      },
                      child: Center(
                          child: SizedBox(
                              width: width * 0.9,
                              child: Image.asset(
                                "assets/images/${image[index]}",
                                fit: BoxFit.fitWidth,
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23.0, vertical: 7),
                      child: RichText(
                        text: TextSpan(
                            text: '${content1[index]} ',
                            style: GoogleFonts.urbanist(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text: '${content2[index]}',
                                style: GoogleFonts.urbanist(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Row(children: [
                        Text(
                          "${creator[index]}",
                          style: GoogleFonts.urbanist(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 3 / 4)),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 23.0, vertical: 7),
                      child: Row(children: [
                        Text(
                          "\u{20B9}${price[index]}",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text(
                            "${mrp[index]}",
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
