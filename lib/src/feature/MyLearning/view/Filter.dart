// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Filter_controller.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/widget/Language.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/widget/Level.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/widget/Price.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/widget/Rating.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter_Page extends ConsumerStatefulWidget {
  const Filter_Page({super.key});
  static const routePath = "/mylearning/filter";

  @override
  ConsumerState<Filter_Page> createState() => _Filter_PageState();
}

@override
class _Filter_PageState extends ConsumerState<Filter_Page> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          language1 = false;
                          language2 = false;
                          language3 = false;
                          language4 = false;
                          language5 = false;
                          language6 = false;
                          language7 = false;
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
            // const Divider(),
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
                                      "Language",
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
                                      "Price",
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
                                    "Level",
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
                        ? const Language_Filter()
                        : tab == 1
                            ? const Rating_Filter()
                            : tab == 2
                                ? const Price_Filter()
                                : const Level_Filter()
                  ],
                ),
              ),
            )
          ],
        ),
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
    );
  }
}
