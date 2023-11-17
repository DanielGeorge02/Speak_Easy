// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/view/BottomNav.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/view/Homepage.dart';

import 'package:flutter_riverpod_base/src/feature/MyLearning/view/MyLearning_page.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/course_page.dart';
import 'package:flutter_riverpod_base/src/feature/Notification/Notification.dart';

class MainPage extends ConsumerWidget {
  MainPage({super.key});
  static const routePath = "/bottom_nav";

  var pagesData = [
    const Homepage(),
    const Course_page(),
    const MyLearning_Page(),
    const Notification_Page(),
    const Homepage(),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: pagesData[ref.watch(bottomNavProvider)],
      bottomNavigationBar: const BottomNav(),
    );
  }
}
