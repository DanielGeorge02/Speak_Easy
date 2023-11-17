// ignore_for_file: must_be_immutable, file_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Payment/Controller/paymentController.dart';
import 'package:flutter_riverpod_base/src/feature/Payment/view/Payment_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Book_Cart extends ConsumerStatefulWidget {
  Book_Cart({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });
  var image;
  var title;
  var price;
  @override
  ConsumerState<Book_Cart> createState() => _Book_CartState();
}

class _Book_CartState extends ConsumerState<Book_Cart> {
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
          "Check Out",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 30),
                    child: Text(
                      "1 Course in Cart",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 234, 234, 234),
                              offset: Offset(0, 4),
                              blurRadius: 12,
                              spreadRadius: 0)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 9.0, top: 14, bottom: 14),
                            child: SizedBox(
                              height: height * 0.10,
                              width: width * 0.20,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/${widget.image}",
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: SizedBox(
                              width: width * 0.6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title,
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 0.01),
                                    child: Text(
                                      "\u{20B9}${widget.price}/-",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.add_circle_outline)),
                                          Text(
                                            "1",
                                            style: GoogleFonts.urbanist(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.do_disturb_on_outlined),
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.delete_outline,
                                              color: Color(0xff8F959E)))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Address",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text(
                          "Select",
                          style: GoogleFonts.inter(
                              color: const Color(0xff0D2063),
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.03),
                            child:
                                SvgPicture.asset("assets/images/location.svg"),
                          ),
                          SizedBox(
                            width: width * 0.7,
                            child: Text(
                              "6/399 M3, ABNR Colony, Rs Road Chennai",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: height * 0.03),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apply Coupon",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 14.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            hintText: "Enter Coupon Code",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 182, 179, 179)),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                    color:
                                        Color.fromARGB(255, 195, 194, 194)))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: height * 0.3,
        width: width,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(245, 246, 250, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order Info',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Subtotal",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(143, 149, 158, 1)),
                  ),
                  Text(
                    widget.price + "/-",
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Charges",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(143, 149, 158, 1)),
                  ),
                  Text(
                    "50/-",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "199/-",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(PaymentProvider.notifier).state = true;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Payment_page()));
                    },
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(13, 32, 99, 1)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                    ),
                    child: Text(
                      "Checkout",
                      style: GoogleFonts.mulish(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
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
