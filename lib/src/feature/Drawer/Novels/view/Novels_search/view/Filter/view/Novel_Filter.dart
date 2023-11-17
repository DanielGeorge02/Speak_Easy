// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Filter/widget/Author.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Filter/widget/Rating.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Filter/widget/Reads.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Filter/widget/categories.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Filter_controller.dart';
// ignore: unused_import
import 'package:flutter_riverpod_base/src/feature/MyLearning/widget/Rating.dart';
import 'package:google_fonts/google_fonts.dart';

class Novels_Filter extends ConsumerStatefulWidget {
  const Novels_Filter({super.key});

  @override
  ConsumerState<Novels_Filter> createState() => _Novels_FilterState();
}

int tab = 0;

class _Novels_FilterState extends ConsumerState<Novels_Filter> {
  @override
  void initState() {
    super.initState();
    tab = 0;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(color: Colors.grey))),
              height: height * 0.1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Filter by",
                      style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
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
                          rating2 = false;
                          rating3 = false;
                          rating4 = false;
                          rating5 = false;
                          rating6 = false;
                          author1 = false;
                          author2 = false;
                          author3 = false;
                          author4 = false;
                          author5 = false;
                          author6 = false;
                          author7 = false;
                          author8 = false;
                          author9 = false;
                          author10 = false;
                          author11 = false;
                          author12 = false;
                        });

                        ref.read(FilterProvider.notifier).state = true;
                      },
                      child: Text(
                        'Clear all',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.02),
                      child: Container(
                        width: width * 0.35,
                        decoration: const BoxDecoration(
                            border: BorderDirectional(
                                end: BorderSide(color: Colors.grey))),
                        // color: Colors.amber,
                        child: Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.06,
                                width: double.maxFinite,
                                child: TextButton(
                                    style: ButtonStyle(
                                        shape: const MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.zero)),
                                        backgroundColor: tab == 0
                                            ? const MaterialStatePropertyAll(
                                                Color(0xffE9EDFD))
                                            : const MaterialStatePropertyAll(
                                                Colors.white)),
                                    onPressed: () {
                                      setState(() {
                                        tab = 0;
                                      });
                                    },
                                    child: Text(
                                      "Categories",
                                      style: GoogleFonts.poppins(
                                          color: tab == 0
                                              ? Colors.black
                                              : const Color(0xff717171),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    )),
                              ),
                              SizedBox(
                                height: height * 0.06,
                                width: double.maxFinite,
                                child: TextButton(
                                  style: ButtonStyle(
                                      shape: const MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero)),
                                      backgroundColor: tab == 1
                                          ? const MaterialStatePropertyAll(
                                              Color(0xffE9EDFD))
                                          : const MaterialStatePropertyAll(
                                              Colors.white)),
                                  onPressed: () {
                                    setState(() {
                                      tab = 1;
                                    });
                                  },
                                  child: Text(
                                    "Rating",
                                    style: GoogleFonts.poppins(
                                        color: tab == 1
                                            ? Colors.black
                                            : const Color(0xff717171),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.06,
                                width: double.maxFinite,
                                child: TextButton(
                                    style: ButtonStyle(
                                        shape: const MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.zero)),
                                        backgroundColor: tab == 2
                                            ? const MaterialStatePropertyAll(
                                                Color(0xffE9EDFD))
                                            : const MaterialStatePropertyAll(
                                                Colors.white)),
                                    onPressed: () {
                                      setState(() {
                                        tab = 2;
                                      });
                                    },
                                    child: Text(
                                      "Reads",
                                      style: GoogleFonts.poppins(
                                          color: tab == 2
                                              ? Colors.black
                                              : const Color(0xff717171),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    )),
                              ),
                              SizedBox(
                                height: height * 0.06,
                                width: double.maxFinite,
                                child: TextButton(
                                  style: ButtonStyle(
                                      shape: const MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.zero)),
                                      backgroundColor: tab == 3
                                          ? const MaterialStatePropertyAll(
                                              Color(0xffE9EDFD))
                                          : const MaterialStatePropertyAll(
                                              Colors.white)),
                                  onPressed: () {
                                    setState(() {
                                      tab = 3;
                                    });
                                  },
                                  child: Text(
                                    "Author",
                                    style: GoogleFonts.poppins(
                                        color: tab == 3
                                            ? Colors.black
                                            : const Color(0xff717171),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    tab == 0
                        ? const Categories()
                        : tab == 1
                            ? const Rating()
                            : tab == 2
                                ? const Reads()
                                : const Author()
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: BorderDirectional(top: BorderSide(color: Colors.grey))),
          height: height * 0.1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(7)))),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff0D2063))),
                  child: Text(
                    "Apply Filter",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
