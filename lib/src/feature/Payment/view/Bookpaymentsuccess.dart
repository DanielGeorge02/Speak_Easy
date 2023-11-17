// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPaymentSuccess_Page extends ConsumerWidget {
  const BookPaymentSuccess_Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          "Order Success",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.05),
              child: Image.asset("assets/images/success1.png"),
            ),
            Text(
              "Payment Success",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400, fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: Text(
                "Order Id: 190234567023",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color.fromARGB(146, 0, 0, 0)),
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount Paid:",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  const Text(
                    "₹199",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method:",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  Text(
                    "Upi",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.08),
              child: Text(
                "You will be redirected to the home page shortly or click here to return to home page",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color(0xff8A8A8A)),
              ),
            ),
            SizedBox(
              width: width,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff0D2063))),
                  onPressed: () {
                    ref.read(bottomNavProvider.notifier).state = 0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 0.015),
                    child: Text(
                      "Home",
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
