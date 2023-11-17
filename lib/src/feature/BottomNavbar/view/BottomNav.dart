// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/controller/Mylearning_controller.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/controller/bottomNav_controller.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                ref.read(bottomNavProvider.notifier).state = 0;
              },
              child: ref.watch(bottomNavProvider) == 0
                  ? Image.asset(
                      "assets/images/Home.png",
                      height: 30,
                      width: 30,
                    )
                  : Image.asset(
                      "assets/images/Home.png",
                      height: 30,
                      width: 30,
                      color: Colors.grey,
                    )),
          GestureDetector(
              onTap: () {
                ref.read(bottomNavProvider.notifier).state = 1;
              },
              child: ref.watch(bottomNavProvider) == 1
                  ? Image.asset("assets/images/Icon.png",
                      height: 30, width: 30, color: Colors.blue)
                  : Image.asset(
                      "assets/images/Icon.png",
                      height: 30,
                      width: 30,
                    )),
          GestureDetector(
            onTap: () {
              ref.read(VideoProvider.notifier).state = true;
              ref.read(bottomNavProvider.notifier).state = 2;
            },
            child: ref.watch(bottomNavProvider) == 2
                ? Image.asset(
                    "assets/images/play.png",
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  )
                : Image.asset(
                    "assets/images/play.png",
                    height: 30,
                    width: 30,
                  ),
          ),
          GestureDetector(
              onTap: () {
                ref.read(bottomNavProvider.notifier).state = 3;
              },
              child: ref.watch(bottomNavProvider) == 3
                  ? Image.asset(
                      "assets/images/Notification.png",
                      height: 30,
                      width: 30,
                      color: Colors.blue,
                    )
                  : Image.asset(
                      "assets/images/Notification.png",
                      height: 30,
                      width: 30,
                    )),
          // GestureDetector(
          //     onTap: () {
          //       ref.read(bottomNavProvider.notifier).state = 4;
          //     },
          //     child: ref.read(bottomNavProvider) == 4
          //         ? Image.asset(
          //             "assets/images/caart.png",
          //             height: 30,
          //             color: Colors.blue,
          //             width: 30,
          //           )
          //         :
          Image.asset(
            "assets/images/caart.png",
            height: 30,
            width: 30,
          )
          // ),
        ],
      ),
    );
  }
}
