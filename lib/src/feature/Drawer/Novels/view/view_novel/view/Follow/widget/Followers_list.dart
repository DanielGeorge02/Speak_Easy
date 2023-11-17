// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/view_novel/view/Follow/widget/Followers.dart';

class Followerslist_widget extends StatefulWidget {
  const Followerslist_widget({super.key});

  @override
  State<Followerslist_widget> createState() => _Followerslist_widgetState();
}

class _Followerslist_widgetState extends State<Followerslist_widget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Followers_widget(
            followers: "3",
            image: "follow1.png",
            name: "Bhanu",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
            name: "Shreya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow3.png",
            name: "Priya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow4.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow5.png",
            name: "Mouli",
          ),
          Followers_widget(
            followers: "3",
            image: "follow4.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow5.png",
            name: "Mouli",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
            name: "Yadhav",
          ),
          Followers_widget(
            followers: "3",
            image: "follow7.png",
            name: "Nabha",
          ),
          Followers_widget(
            followers: "3",
            image: "follow3.png",
            name: "Priya",
          ),
          Followers_widget(
            followers: "3",
            image: "follow1.png",
            name: "Bhanu",
          ),
          Followers_widget(
            followers: "3",
            image: "follow4.png",
            name: "Rahul",
          ),
          Followers_widget(
            followers: "3",
            image: "follow2.png",
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
