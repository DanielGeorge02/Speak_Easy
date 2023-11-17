// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/otp_page.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/login.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Register_page extends StatefulWidget {
  static const routePath = "/register";
  const Register_page({super.key});

  @override
  State<Register_page> createState() => _Register_pageState();
}

class _Register_pageState extends State<Register_page> {
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
                padding: const EdgeInsets.only(top: 28.0, bottom: 5),
                child:
                    Center(child: Image.asset("assets/images/loginpage.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, bottom: 2),
                child: Text(
                  "Get Started",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: const Color(0xff515151)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, bottom: 16),
                child: Text(
                  "by creating a free account",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: const Color.fromRGBO(0, 0, 0, 0.5)),
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
                        hintText: "Full Name",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Color(0xffD0D0D0)))),
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
                        hintText: "Enter Email",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Color(0xffD0D0D0)))),
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
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Color(0xff8A8A8A),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Enter Password",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Color(0xffD0D0D0)))),
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
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Color(0xff8A8A8A),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                        hintText: "Confirm Password",
                        hintStyle: GoogleFonts.lato(
                            color: const Color(0xff8A8A8A),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide:
                                const BorderSide(color: Color(0xffD0D0D0)))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0, vertical: 18),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D2063),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {
                        context.push(Otp_Page.routePath);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 13.0),
                        child: Text(
                          "Signup",
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
                      "Already have an account?  ",
                      style: GoogleFonts.lato(
                          color: const Color.fromRGBO(81, 81, 81, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push(Login_page.routePath);
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.lato(
                            color: const Color.fromRGBO(0, 152, 234, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
