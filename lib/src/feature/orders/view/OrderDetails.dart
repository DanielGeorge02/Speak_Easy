// ignore_for_file: camel_case_types, must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/orders/view/Delivery.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetails_Page extends StatefulWidget {
  OrderDetails_Page(
      {super.key,
      required this.date,
      required this.time,
      required this.image,
      required this.title,
      required this.price});
  var date;
  var time;
  var image;
  var title;
  var price;
  @override
  State<OrderDetails_Page> createState() => _OrderDetails_PageState();
}

class _OrderDetails_PageState extends State<OrderDetails_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          leadingWidth: width * 0.18,
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
            "Order Details",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.02),
          child: Column(children: [
            Container(
                width: width,
                height: height * 0.15,
                color: const Color(0xffFEFBEA),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.06, right: width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order delivered!",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: const Color(0xff0C2638)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.015),
                            child: Text(
                              "Happy Learning !",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 81, 80, 80)),
                            ),
                          )
                        ],
                      ),
                      Image.asset("assets/images/deliveredimg.png")
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.08, vertical: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "6/399 M3, ABNR Colony",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color(0xff0C2638)),
                      ),
                      Text(
                        "Chennai",
                        style: GoogleFonts.inter(
                            color: const Color(0xff818F98),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                  SvgPicture.asset("assets/images/location.svg"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.08, vertical: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: width * 0.02),
                        child: SvgPicture.asset("assets/images/delivered.svg"),
                      ),
                      Text(
                        "Delivered on ${widget.date}, ${widget.time}",
                        style: GoogleFonts.poppins(
                            color: const Color(0xff0C2638),
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Color(0xff0D2063),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03, vertical: height * 0.01),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.1,
                            offset: Offset(0, 0),
                            color: Color.fromRGBO(0, 0, 0, 0.4))
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 0.015,
                              horizontal: width * 0.07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Items in order",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: const Color(0xff0C2638)),
                              ),
                              Text(
                                "1 Item",
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff818F98),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color.fromRGBO(219, 219, 219, 1),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.06),
                              child: SizedBox(
                                  height: height * 0.06,
                                  child: Image.asset(widget.image)),
                            ),
                            SizedBox(
                              width: width * 0.70,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.025),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.title,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: width * 0.23,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.02),
                                    child: Text(
                                      "Qt",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: const Color(0xff85939B)),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xffE8ECF4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Text(
                                        "x1",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: const Color(0xff0D2063)),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: height * 0.015, right: width * 0.1),
                                child: Text(
                                  "₹${widget.price}",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color.fromRGBO(219, 219, 219, 1),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                              horizontal: width * 0.07),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Total",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: const Color(0xff0C2638)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.03),
                                    child: Text(
                                      "₹${widget.price}",
                                      style: const TextStyle(
                                          color: Color(0xff0D2063),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xff0D2063),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.035,
                        left: width * 0.07,
                        right: width * 0.07,
                        bottom: height * 0.01),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DeliveryInfo_Page()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Padding(
                                padding: EdgeInsets.only(right: width * 0.02),
                                child: SvgPicture.asset(
                                    "assets/images/delivered.svg"),
                              ),
                              Text(
                                "Click here to see delivery Info",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: const Color(0xff0C2638)),
                              )
                            ]),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xff0D2063),
                            )
                          ]),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.07, vertical: height * 0.03),
                    child: SizedBox(
                      width: width,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4))),
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xff0D2063))),
                          onPressed: () {},
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.015),
                            child: Text(
                              "BUY AGAIN",
                              style: GoogleFonts.mulish(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
