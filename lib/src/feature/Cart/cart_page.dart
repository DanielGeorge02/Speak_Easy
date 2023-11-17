// ignore_for_file: must_be_immutable, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/Payment/Controller/paymentController.dart';
import 'package:flutter_riverpod_base/src/feature/Payment/view/Payment_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Page extends ConsumerStatefulWidget {
  Cart_Page(
      {super.key,
      required this.image,
      required this.title,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.rating,
      required this.price,
      required this.reviews});
  var image;
  var title;
  var text1;
  var text2;
  var text3;
  var rating;
  var reviews;
  var price;
  @override
  ConsumerState<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends ConsumerState<Cart_Page> {
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
          "Cart",
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.title + ":" + widget.text2,
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    widget.text3,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color:
                                            Color.fromRGBO(143, 149, 158, 1)),
                                  ),
                                  Row(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: RatingBar.builder(
                                            initialRating: 4.5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemSize: height * 0.025,
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star_rate_rounded,
                                                  color: Colors.amber,
                                                ),
                                            onRatingUpdate: (rating) {}),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Text(
                                          widget.rating,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13),
                                        ),
                                      ),
                                      Text(
                                        "${widget.reviews} Reviews",
                                        style: const TextStyle(
                                            color:
                                                Color.fromARGB(171, 84, 84, 86),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "116.5 hours",
                                        style: GoogleFonts.urbanist(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.0),
                                            child: Icon(
                                              Icons.fiber_manual_record,
                                              size: 8,
                                            ),
                                          ),
                                          Text(
                                            "50 lectures",
                                            style: GoogleFonts.urbanist(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.0),
                                            child: Icon(
                                              Icons.fiber_manual_record,
                                              size: 8,
                                            ),
                                          ),
                                          Text(
                                            "Beginner",
                                            style: GoogleFonts.urbanist(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Column(
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
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Related Courses",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                ),
                              ],
                            )
                          ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: width * 0.17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/studentsviewed.png"),
                              const Text(
                                "Spoken English",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/relatedcourse2.png"),
                              const Text(
                                "Complete English",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/relatedcourse3.png"),
                              const Text(
                                "French by IBM",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.17,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/relatedcourse4.png"),
                              const Text(
                                "Japanese by Linguae",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
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
                        fontWeight: FontWeight.w400,
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
                    "Tax(.inc of all taxes)",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(143, 149, 158, 1)),
                  ),
                  Text(
                    "99/-",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(143, 149, 158, 1)),
                  ),
                  Text(
                    "599/-",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: SizedBox(
                  width: width,
                  child: ElevatedButton(
                    onPressed: () {
                      ref.read(PaymentProvider.notifier).state = false;
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
                      "Place Order",
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
