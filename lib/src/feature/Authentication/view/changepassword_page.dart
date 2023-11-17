// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/controller/HomepopupController.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Changepassword_page extends ConsumerWidget {
  static const routePath = "/changepassword";
  const Changepassword_page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0, bottom: 5),
              child: Center(child: Image.asset("assets/images/password.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, bottom: 19),
              child: Text(
                "Change Password",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: const Color(0xff515151)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 38.0, right: 38, top: 15),
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
              padding: const EdgeInsets.only(left: 38.0, right: 38, top: 20),
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
                      hintText: "Enter New Password",
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
              padding: const EdgeInsets.only(
                left: 38.0,
                right: 38,
                top: 20,
              ),
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
                  const EdgeInsets.symmetric(horizontal: 38.0, vertical: 28),
              child: SizedBox(
                width: width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0D2063),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {
                      ref.read(HomepopupController.notifier).state = true;
                      context.push(MainPage.routePath);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 13.0),
                      child: Text(
                        "Update Changes",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
