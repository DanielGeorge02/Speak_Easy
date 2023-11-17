// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/register.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_page extends StatefulWidget {
  static const routePath = "/login";
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child:
                    Center(child: Image.asset("assets/images/loginpage.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, bottom: 21),
                child: Text(
                  "Login",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: const Color(0xff515151)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: SizedBox(
                  width: width,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Enter Mail",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Color(0xffD0D0D0)))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, right: 38, top: 16),
                child: SizedBox(
                  width: width,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Enter Password",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Color(0xffD0D0D0)))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47.0, bottom: 15, top: 5),
                child: Text(
                  "Forget Password?",
                  style: GoogleFonts.lato(
                      color: const Color.fromRGBO(13, 32, 99, 0.5),
                      fontWeight: FontWeight.w700,
                      fontSize: 13),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D2063),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {
                        context.push(Register_page.routePath);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 13.0),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New Member?  ",
                      style: GoogleFonts.lato(
                          color: const Color.fromRGBO(81, 81, 81, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      "Register Now",
                      style: GoogleFonts.lato(
                          color: const Color.fromRGBO(0, 152, 234, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 37.0, right: 37, bottom: 17),
                child: Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color.fromRGBO(208, 208, 208, 1),
                      endIndent: 60,
                    )),
                    Text(
                      "Or",
                      style: GoogleFonts.lato(
                          color: const Color.fromRGBO(208, 208, 208, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Color.fromRGBO(208, 208, 208, 1),
                      indent: 60,
                    )),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 38.0),
              //   child: Container(
              //     width: width,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //         border: Border.all(color: const Color(0xffD0D0D0))),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(
              //           vertical: 14.0, horizontal: 11),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.only(right: 16.0),
              //             child: SvgPicture.asset("assets/images/google.svg"),
              //           ),
              //           Text("Google",
              //               style:
              //                   GoogleFonts.lato(color: const Color(0xff8A8A8A))),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffD0D0D0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: SvgPicture.asset("assets/images/google.svg"),
                        ),
                        Text("Google",
                            style: GoogleFonts.lato(
                                color: const Color(0xff505050),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, right: 38, top: 16),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: const Color(0xffD0D0D0))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: SvgPicture.asset("assets/images/facebook.svg"),
                        ),
                        Text("Facebook",
                            style: GoogleFonts.lato(
                                color: const Color(0xff505050),
                                fontWeight: FontWeight.w700,
                                fontSize: 14)),
                      ],
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
