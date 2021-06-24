import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:founder_link/HelperClass/dart/heplerclass.dart';
import 'package:founder_link/views/login/login_founder/login_founder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _logo(),
                  _text(),
                  _continueBtn(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(top: 40.h, bottom: 10.h),
      child: Image.asset(AppImages.logo),
    );
  }

  Widget _text() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Center(
          child: Text("Check Your Email for Confirmation",
              style: GoogleFonts.poppins(fontSize: 15.h, fontWeight: FontWeight.bold))),
    );
  }

  Widget _continueBtn() {
    return GestureDetector(
      onTap: () {
        //  Get.to(()=>Signup());
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 00.h,
          left: 30.h,
          right: 30.h,
        ),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.h)), color: Colors.black),
        child: GestureDetector(
          onTap: () {
            Get.to(() => LoginFounder());
          },
          child: Center(
              child: Text(
            "Continue",
            style: GoogleFonts.poppins(fontSize: 12.h, color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
