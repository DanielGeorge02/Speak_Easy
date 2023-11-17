// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/forgetpassword_page.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Otp_Page extends StatefulWidget {
  static const routePath = "/otp";
  const Otp_Page({super.key});

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                  "Almost there",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: const Color.fromRGBO(81, 81, 81, 1)),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 39),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please enter the 6-digit code sent to your ",
                        style: GoogleFonts.mulish(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(37, 37, 37, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "email ",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(37, 37, 37, 1),
                            ),
                          ),
                          Text(
                            "thisisyour.mail@gmail.com ",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(37, 37, 37, 1),
                            ),
                          ),
                          Text(
                            "for verification.",
                            style: GoogleFonts.mulish(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(37, 37, 37, 1),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Pinput(
                            length: 6,
                            defaultPinTheme: PinTheme(
                              width: height * 0.06,
                              height: height * 0.06,
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(30, 60, 87, 1),
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 246, 250, 1),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(245, 246, 250, 1)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ))
                    ],
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 38.0, vertical: 10),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D2063),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {
                        context.push(ForgetPassword.routePath);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 13.0),
                        child: Text(
                          "Verify",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive any code? ",
                      style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(37, 37, 37, 0.75),
                      ),
                    ),
                    Text(
                      "Resend again",
                      style: GoogleFonts.mulish(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(37, 37, 37, 1),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7.0),
                child: Center(
                  child: Text(
                    "Request new code in 00:30s",
                    style: GoogleFonts.mulish(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
