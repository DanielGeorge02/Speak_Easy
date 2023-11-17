// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/commons/views/splash.dart';
import 'package:flutter_riverpod_base/src/feature/Books/view/books_page.dart';
import 'package:flutter_riverpod_base/src/feature/BottomNavbar/view/BottomNav.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/widget/course_pageWidget.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Faq.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Myprofile.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Novels/view/Novels.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/ReferandEarn.dart';
import 'package:flutter_riverpod_base/src/feature/Drawer/Settings.dart';
import 'package:flutter_riverpod_base/src/feature/Homepage/view/Homepage.dart';
import 'package:flutter_riverpod_base/src/feature/Instructor/view/Instructor.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/Filter.dart';
import 'package:flutter_riverpod_base/src/feature/MyLearning/view/MyLearning_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/See%20All%20Reviews/view/seeAll.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/changepassword_page.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/course_page.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/forgetpassword_page.dart';
import 'package:flutter_riverpod_base/src/feature/mainPage.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/otp_page.dart';
import 'package:flutter_riverpod_base/src/commons/views/landing_page.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/register.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/login.dart';
import 'package:flutter_riverpod_base/src/feature/Course_Page/view/viewCourse_page.dart';
import 'package:flutter_riverpod_base/src/feature/orders/view/Order.dart';
// import 'package:flutter_riverpod_base/src/feature/home/view/home.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashView.routePath,
  routes: [
    GoRoute(
      path: SplashView.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: LandingPage.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const LandingPage();
      },
    ),
    GoRoute(
      path: Login_page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Login_page();
      },
    ),
    GoRoute(
      path: Register_page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Register_page();
      },
    ),
    GoRoute(
      path: Otp_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Otp_Page();
      },
    ),
    GoRoute(
      path: ForgetPassword.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const ForgetPassword();
      },
    ),
    GoRoute(
      path: Changepassword_page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Changepassword_page();
      },
    ),
    GoRoute(
      path: Homepage.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Homepage();
      },
    ),
    GoRoute(
      path: MainPage.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return MainPage();
      },
    ),
    GoRoute(
      path: Course_page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Course_page();
      },
    ),
    GoRoute(
      path: ViewCourse_page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        viewCourse_value value = state.extra as viewCourse_value;
        return ViewCourse_page(object: value);
      },
    ),
    GoRoute(
      path: SeeAllReview.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const SeeAllReview();
      },
    ),
    GoRoute(
      path: MyLearning_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const MyLearning_Page();
      },
    ),
    GoRoute(
      path: MyProfile.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const MyProfile();
      },
    ),
    GoRoute(
      path: Books_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Books_Page();
      },
    ),
    GoRoute(
      path: Novels_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Novels_Page();
      },
    ),
    GoRoute(
      path: Novels_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Novels_Page();
      },
    ),
    GoRoute(
      path: Order_page.routepath,
      builder: (BuildContext context, GoRouterState state) {
        return const Order_page();
      },
    ),
    GoRoute(
      path: ReferandEarn_Page.routepath,
      builder: (BuildContext context, GoRouterState state) {
        return const ReferandEarn_Page();
      },
    ),
    GoRoute(
      path: Faq_Page.routepath,
      builder: (BuildContext context, GoRouterState state) {
        return const Faq_Page();
      },
    ),
    GoRoute(
      path: Settings_Page.routepath,
      builder: (BuildContext context, GoRouterState state) {
        return const Settings_Page();
      },
    ),
    GoRoute(
      path: Filter_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        return const Filter_Page();
      },
    ),
    GoRoute(
      path: Instructor_Page.routePath,
      builder: (BuildContext context, GoRouterState state) {
        Instructor_Page value = state.extra as Instructor_Page;

        return Instructor_Page(
          object: value,
        );
      },
    ),
  ],
);
