// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/orders/widget/Cancelled.dart';
import 'package:flutter_riverpod_base/src/feature/orders/widget/Completed.dart';
import 'package:flutter_riverpod_base/src/feature/orders/widget/Toreceive.dart';
import 'package:google_fonts/google_fonts.dart';

class Order_page extends StatefulWidget {
  const Order_page({super.key});
  static const routepath = "/myorders";
  @override
  State<Order_page> createState() => _Order_page();
}

class _Order_page extends State<Order_page> {
  int tab = 0;
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
          "Orders",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.05, vertical: height * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tab = 0;
                      });
                    },
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            tab == 0 ? const Color(0xff0D2063) : Colors.white),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: tab != 0
                                ? const BorderSide(color: Color(0xffF2F3F4))
                                : BorderSide.none,
                            borderRadius: BorderRadius.circular(100)))),
                    child: Text(
                      "TO RECEIVE",
                      style: GoogleFonts.poppins(
                          color: tab != 0 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tab = 1;
                      });
                    },
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            tab == 1 ? const Color(0xff0D2063) : Colors.white),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: tab != 1
                                ? const BorderSide(color: Color(0xffF2F3F4))
                                : BorderSide.none,
                            borderRadius: BorderRadius.circular(100)))),
                    child: Text(
                      "COMPLETED",
                      style: GoogleFonts.poppins(
                          color: tab != 1 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tab = 2;
                      });
                    },
                    style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(
                            tab == 2 ? const Color(0xff0D2063) : Colors.white),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            side: tab != 2
                                ? const BorderSide(color: Color(0xffF2F3F4))
                                : BorderSide.none,
                            borderRadius: BorderRadius.circular(100)))),
                    child: Text(
                      "CANCELLED",
                      style: GoogleFonts.poppins(
                          color: tab != 2 ? Colors.black : Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )),
              ],
            ),
          ),
          tab == 0
              ? const Toreceive_widget()
              : tab == 1
                  ? const Completed_Page()
                  : const Cancel_Page(),
        ],
      ),
    );
  }
}
