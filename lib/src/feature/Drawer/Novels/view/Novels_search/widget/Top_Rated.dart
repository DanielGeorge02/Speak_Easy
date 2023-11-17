// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels_search/widget/search_Container_widget.dart';

class TopRated_Novel extends StatefulWidget {
  const TopRated_Novel({super.key});

  @override
  State<TopRated_Novel> createState() => _TopRated_NovelState();
}

class _TopRated_NovelState extends State<TopRated_Novel> {
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
                  image: "novel4.png",
                  name: "JAWS",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel3.png",
                  name: "Lord of Rings",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel2.png",
                  name: "Fake Love",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel6.png",
                  name: "The Book Thief",
                  episodes: "325",
                  reads: "3.1k"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.03),
              child: SearchNovel_widget(
                  image: "novel1.png",
                  name: "A Tale of Two Cities",
                  episodes: "325",
                  reads: "3.1k"),
            ),
          ],
        ),
      ),
    );
  }
}
