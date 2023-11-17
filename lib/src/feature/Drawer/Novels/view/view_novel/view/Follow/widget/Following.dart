// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Follow/widget/Followers.dart';

class Following_list extends StatefulWidget {
  const Following_list({super.key});

  @override
  State<Following_list> createState() => _Following_listState();
}

class _Following_listState extends State<Following_list> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Followers_widget(
            followers: "3",
            image: "follow5.png",
            name: "Bhanu",
          ),
          Followers_widget(
            followers: "3",
            image: "follow3.png",
            name: "Shreya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow1.png",
            name: "Priya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow4.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow7.png",
            name: "Mouli",
          ),
          Followers_widget(
            followers: "3",
            image: "follow3.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
            name: "Mouli",
          ),
          Followers_widget(
            followers: "3",
            image: "follow1.png",
            name: "Yadhav",
          ),
          Followers_widget(
            followers: "3",
            image: "follow4.png",
            name: "Nabha",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
            name: "Priya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow7.png",
            name: "Bhanu",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow5.png",
            name: "Shreya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow3.png",
            name: "Geetha",
          ),
        ],
      ),
    );
  }
}
