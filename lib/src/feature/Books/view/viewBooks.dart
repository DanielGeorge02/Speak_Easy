// ignore_for_file: must_be_immutable, file_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Cart/Book_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewBooks_Page extends StatefulWidget {
  ViewBooks_Page(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  var image;
  var title;
  int price;
  @override
  State<ViewBooks_Page> createState() => _ViewBooks_PageState();
}

class _ViewBooks_PageState extends State<ViewBooks_Page> {
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
          "Shop Books",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 23.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE8ECF4)),
                  borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Books_Page()));
                  },
                  icon: const Icon(
                    Icons.file_upload_outlined,
                    color: Color(0xff001A72),
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        child: Column(
          children: [
            SizedBox(
                height: height * 0.35,
                width: width,
                child: Image.asset("assets/images/${widget.image}")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(TextSpan(
                    text: "${widget.title}",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 20),
                    children: <InlineSpan>[
                      TextSpan(
                        text:
                            "(Apprendre le français à partir de l'anglais dans 30 jours)",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ])),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: Text(
                          "\u{20B9}${widget.price}",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Text(
                        "\u{20B9}${749}",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.01),
                  child: Text.rich(TextSpan(
                      text: 'Free delivery',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xff414296)),
                      children: <InlineSpan>[
                        TextSpan(
                          text: ' Saturday,22 July on your first order.',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.01),
                  child: Text(
                    "Description",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                ),
                Text(
                  "Learn French In 30 Days Through English is a book by Bhavna Chopra, that serves as a reference manual and comprehensive guide in teaching its readers French by means Read More..",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 15),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color(0xffE8ECF4),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        height: height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\u{20B9}${widget.price}",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, fontSize: 25),
                ),
                Text(
                  "\u{20B9}${749}",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                )
              ],
            ),
            SizedBox(
                width: width * 0.7,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xff0D2063)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular((6))))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Book_Cart(
                                  image: widget.image,
                                  title: widget.title.toString(),
                                  price: widget.price.toString())));
                    },
                    child: Text(
                      "Buy Now",
                      style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )))
          ],
        ),
      ),
    );
  }
}
