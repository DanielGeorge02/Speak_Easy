// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/widget/search_Container_widget.dart';

class Trending_Novel extends StatefulWidget {
  const Trending_Novel({super.key});

  @override
  State<Trending_Novel> createState() => _Trending_NovelState();
}

class _Trending_NovelState extends State<Trending_Novel> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                episodes: "325",
                image: "novel7.png",
                name: "Invisible Man",
                reads: "3.1k",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel5.png",
                  name: "The Book Thief",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel4.png",
                  name: "JAWS",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel1.png",
                  name: "A tale of two cities",
                  episodes: "325",
                  reads: "3.1k"),
            )
          ],
        ),
      ),
    );
  }
}
