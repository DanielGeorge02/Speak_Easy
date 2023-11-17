import 'package:flutter/material.dart';
import 'package:flutter_riverpod_base/src/feature/Authentication/view/login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  static const routePath = "/landing";
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 17.0),
              child:
                  Center(child: SvgPicture.asset("assets/images/landing.svg")),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 29.0),
                  child: Column(
                    children: [
                      Text(
                        "Language makes",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "thinks simpler",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 36, top: 16),
              child: Image.asset(
                "assets/images/child.png",
                height: 429,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 29.0),
                    child: Column(
                      children: [
                        Text(
                          "Embrace the power of Language,",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "and watch your dreams soar.",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0D2063),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                  onPressed: () {
                    context.push(Login_page.routePath);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.mulish(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 17,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
