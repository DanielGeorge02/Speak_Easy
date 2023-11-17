// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/login.dart';
import 'package:flutter_riverpod_base/src/feature/Books/view/books_page.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Faq.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Myprofile.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/ReferandEarn.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Settings.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/view/Homepage.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Mylearning_controller.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:flutter_riverpod_base/src/feature/orders/view/Order.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawer_Page extends ConsumerWidget {
  const Drawer_Page({super.key});
  static const routePath = "/home";
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      width: width * 0.75,
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.07,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.04, bottom: height * 0.04),
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
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.05),
              child: Row(
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png")),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nick Turner",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(
                              "Verified User",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ),
                            SvgPicture.asset("assets/images/verify.svg")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.01,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: width * 0.02),
                              child: const Icon(Icons.wb_sunny_outlined),
                            ),
                            Text(
                              "Dark Mode",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 20),
                            )
                          ],
                        ),
                        const Icon(
                          Icons.toggle_off_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        context.push(MyProfile.routePath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/person.png"),
                          ),
                          Text(
                            "My Profile",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        context.push(Books_Page.routePath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/books.png"),
                          ),
                          Text(
                            "Books",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        context.push(Novels_Page.routePath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/novels.png"),
                          ),
                          Text(
                            "Novels",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        ref.read(VideoProvider.notifier).state = true;

                        ref.read(bottomNavProvider.notifier).state = 2;
                        context.push(MainPage.routePath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/mylearning.png"),
                          ),
                          Text(
                            "My Learning",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: InkWell(
                      onTap: () {
                        context.push(Order_page.routepath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/myorder.png"),
                          ),
                          Text(
                            "My Orders",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.02),
                          child: Image.asset("assets/images/savedcards.png"),
                        ),
                        Text(
                          "Saved Cards",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        context.go(ReferandEarn_Page.routepath);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/refer.png"),
                          ),
                          Text(
                            "Refer & Earn",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Faq_Page()));
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/help.png"),
                          ),
                          Text(
                            "Help and FAQs",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings_Page()));
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Image.asset("assets/images/settings.png"),
                          ),
                          Text(
                            "Settings",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.3,
              child: ElevatedButton(
                  onPressed: () {
                    context.push(Login_page.routePath);
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff0D2063))),
                  child: Row(
                    children: [
                      Image.asset("assets/images/logout.png"),
                      Text(
                        "Logout",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.white),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
