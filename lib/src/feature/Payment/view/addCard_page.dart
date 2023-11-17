// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Payment/view/PaySuccess_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCard_Page extends StatefulWidget {
  const AddCard_Page({super.key});

  @override
  State<AddCard_Page> createState() => _AddCard_PageState();
}

class _AddCard_PageState extends State<AddCard_Page> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Add New Card",
                      style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w700, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Card Number",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF5F6FA),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: "Enter Card Number",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Card Holder",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffF5F6FA),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: "Enter Card Holder Name",
                          hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "Expiry Date",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xffF5F6FA),
                                  contentPadding:
                                      EdgeInsets.only(left: width * 0.1),
                                  hintText: "MM/YY",
                                  hintStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              "CVV",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.3,
                            child: TextField(
                              decoration: InputDecoration(
                                  suffixIcon:
                                      Image.asset("assets/images/cvv.png"),
                                  filled: true,
                                  fillColor: const Color(0xffF5F6FA),
                                  contentPadding:
                                      EdgeInsets.only(left: width * 0.07),
                                  hintText: "XXX",
                                  hintStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Divider(),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        "Save card for future use",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: SizedBox(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Paysucccess_Page()));
                  },
                  style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(13, 32, 99, 1))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Save Card",
                      style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
