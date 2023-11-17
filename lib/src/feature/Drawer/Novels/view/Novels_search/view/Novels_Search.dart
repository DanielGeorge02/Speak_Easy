// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/Controller/Tab.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/view/Filter/view/Novel_Filter.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/widget/Popular.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/widget/Top_Rated.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/widget/Trending.dart';

import 'package:google_fonts/google_fonts.dart';

class Novels_search_Page extends ConsumerWidget {
  const Novels_search_Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded)),
                  SizedBox(
                    width: width * 0.73,
                    height: height * 0.05,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: const Color(0xffF6F6F6),
                          contentPadding: EdgeInsets.only(
                              top: height * 0.01, left: width * 0.05),
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDDDDDD)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Search",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: const Color(0xffBDBDBD))),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Novels_Filter()));
                      },
                      icon: Icon(
                        Icons.filter_list_outlined,
                        size: height * 0.038,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      ref.read(SearchTab.notifier).state = 0;
                    },
                    child: SizedBox(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          Text(
                            "Trending",
                            style: ref.watch(SearchTab) == 0
                                ? const TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          ref.watch(SearchTab) == 0
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
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.2,
                    child: InkWell(
                      onTap: () {
                        ref.read(SearchTab.notifier).state = 1;
                      },
                      child: Column(
                        children: [
                          Text(
                            "Popular",
                            style: ref.watch(SearchTab) == 1
                                ? const TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          ref.watch(SearchTab) == 1
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
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(SearchTab.notifier).state = 2;
                    },
                    child: SizedBox(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          Text(
                            "Top rated",
                            style: ref.watch(SearchTab) == 2
                                ? const TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          ref.watch(SearchTab) == 2
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
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(SearchTab.notifier).state = 3;
                    },
                    child: SizedBox(
                      width: width * 0.17,
                      child: Column(
                        children: [
                          Text(
                            "Others",
                            style: ref.watch(SearchTab) == 3
                                ? const TextStyle(
                                    fontFamily: "PlusJakartaSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color.fromRGBO(0, 0, 0, 0.75))
                                : GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400, fontSize: 15),
                          ),
                          ref.watch(SearchTab) == 3
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
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ref.watch(SearchTab) == 0
                ? Flexible(child: const Trending_Novel())
                : ref.watch(SearchTab) == 1
                    ? Flexible(child: const Popular_Novel())
                    : Flexible(child: const TopRated_Novel()),
          ],
        ),
      ),
    );
  }
}
