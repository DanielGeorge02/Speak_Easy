// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/widget/Novels_widget.dart';

class NovelsList_widget extends StatefulWidget {
  const NovelsList_widget({super.key});

  @override
  State<NovelsList_widget> createState() => _NovelsList_widgetState();
}

class _NovelsList_widgetState extends State<NovelsList_widget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        children: [
          WrittenNovels(
            image: "novel7.png",
            episodes: "325",
            name: "Invisible Man",
            reads: "3.1",
          ),
          WrittenNovels(
            image: "novel5.png",
            episodes: "325",
            name: "The Book Thief",
            reads: "3.1",
          ),
          WrittenNovels(
            image: "novel4.png",
            episodes: "325",
            name: "JAWS",
            reads: "3.1",
          ),
          WrittenNovels(
            image: "novel7.png",
            episodes: "325",
            name: "The Book Thief",
            reads: "3.1",
          )
        ],
      ),
    );
  }
}
