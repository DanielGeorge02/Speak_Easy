import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/utils/router.dart';
// import 'feature/home/view/home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffFEFEFE),
          fontFamily: "Poppins"),
    );
  }
}
