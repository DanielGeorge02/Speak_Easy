// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});
  static const routePath = "/myprofile";

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TextEditingController name = TextEditingController(text: 'Nick Turner');
  TextEditingController email =
      TextEditingController(text: 'nickturner123@gmail.com');
  TextEditingController number = TextEditingController(text: '8567321209');
  TextEditingController date = TextEditingController(text: '03-07-2004');
  String radio = 'male';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xffE8ECF4),
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: const Color(0xffE8ECF4),
          leadingWidth: 75,
          toolbarHeight: 60,
          leading: Padding(
            padding: const EdgeInsets.only(left: 23.0, top: 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            ),
          ),
          centerTitle: true,
          title: Text(
            "Profile",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
        body: SizedBox(
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.3,
                height: height * 0.17,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: width * 0.15,
                      backgroundImage:
                          const AssetImage("assets/images/profile1.png"),
                    ),
                    Positioned(
                      left: width * 0.209,
                      top: height * 0.106,
                      child: CircleAvatar(
                        radius: width * 0.04,
                        backgroundColor: const Color(0xff0D2062),
                        child: Image.asset("assets/images/camera.png"),
                      ),
                    )
                  ],
                ),
              ),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: width,
                  height: height * 0.66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.08, vertical: height * 0.035),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              TextField(
                                readOnly: true,
                                controller: name,
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff9A9A9A))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email Address",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              TextField(
                                readOnly: true,
                                controller: email,
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff9A9A9A))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile No.",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              TextField(
                                readOnly: true,
                                controller: number,
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff9A9A9A))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.01),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Birthdate",
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.grey),
                              ),
                              TextField(
                                readOnly: true,
                                controller: date,
                                style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xff9A9A9A))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.grey),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 'male',
                                      activeColor: const Color(0xff43A4ED),
                                      groupValue: radio,
                                      onChanged: (value) {
                                        setState(() {
                                          radio = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: const Color(0xff515151)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 'Female',
                                      activeColor: const Color(0xff43A4ED),
                                      groupValue: radio,
                                      onChanged: (value) {
                                        setState(() {
                                          radio = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: const Color(0xff515151)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: 'other',
                                      activeColor: const Color(0xff43A4ED),
                                      groupValue: radio,
                                      onChanged: (value) {
                                        setState(() {
                                          radio = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Other",
                                      style: GoogleFonts.urbanist(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: const Color(0xff515151)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.025),
                          child: SizedBox(
                            width: width,
                            height: height * 0.055,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Color(0xff0D2063)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4))),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Save Changes",
                                  style: GoogleFonts.mulish(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
