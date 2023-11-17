// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Books/view/viewBooks.dart';
import 'package:google_fonts/google_fonts.dart';

class Product {
  final String title;
  final String imageUrl;
  final int price;

  Product(this.title, this.imageUrl, this.price);
}

class Books_Page extends StatefulWidget {
  const Books_Page({super.key});
  static const routePath = "/books";
  @override
  State<Books_Page> createState() => _Books_PageState();
}

final List<Product> products = [
  Product("Spoken English grammar for beginners", "book1.png", 250),
  Product("The Quick And Easy Way To Effective Speaking", "book2.png", 350),
  Product("Learn French In 30 Days Through English", "book3.png", 149),
  Product("Learn French With Short Stories-Fifteen Beginner", "book4.png", 880),
  Product("Japanese,Made Simple by Dan Akiyama", "book5.png", 749),
  Product("Japanese short stories for beginners", "book6.png", 149),
  Product("Learn German:Step by Step Guide", "book7.png", 549),
  Product("Learn German:A Comprehensive Guide", "book8.png", 799),
];

class _Books_PageState extends State<Books_Page> {
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
          "Books",
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Books_Page()));
                  },
                  icon: const Icon(Icons.search_rounded)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            if (index < products.length) {
              return GridTile(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewBooks_Page(
                                  image: products[index].imageUrl,
                                  price: products[index].price,
                                  title: products[index].title,
                                )));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: height * 0.28,
                            width: double.maxFinite,
                            child: Image.asset(
                              'assets/images/${products[index].imageUrl}',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Positioned(
                            left: width * 0.36,
                            top: height * 0.01,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: height * 0.02,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        products[index].title,
                        style: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        '\u{20B9}${products[index].price}/-',
                        style: const TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
