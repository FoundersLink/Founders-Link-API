import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:founder_link/HelperClass/dart/heplerclass.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:founder_link/views/signup/signup.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        top: false,
        maintainBottomViewPadding: true,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _logo(),
                  _text(),
                  _email(),
                  _password(),
                  _loginbtn(),
                  _signuptn(),
                  _meetingbtn(),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _logo() {
    return Container(
      child: Image.asset(AppImages.logo),
    );
  }

  Widget _text() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Center(child: Text("Login", style: GoogleFonts.poppins(fontSize: 35.h, fontWeight: FontWeight.bold))),
    );
  }

  Widget _email() {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              left: 25.h,
              right: 20.h,
            ),
            child: Text(
              "Email",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12.h),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              left: 20.h,
              right: 20.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.h)), border: Border.all(color: Colors.grey[400])),
            child: Container(
              margin: EdgeInsets.all(5.h),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "johnadeo@gmail.com",
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey[200]),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _password() {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 5.h,
              left: 25.h,
              right: 20.h,
            ),
            child: Text(
              "Password",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 12.h),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.h, left: 20.h, right: 20.h, bottom: 2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.h)), border: Border.all(color: Colors.grey[400])),
            child: Container(
              margin: EdgeInsets.all(5.h),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "**********",
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey[200]),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginbtn() {
    return GestureDetector(
      onTap: () {
        Get.to(() => Signup());
      },
      child: Container(
        margin: EdgeInsets.only(top: 40.h, left: 30.h, right: 30.h),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.h)), color: Colors.black),
        child: GestureDetector(
          onTap: () {},
          child: Center(
              child: Text(
            "Login",
            style: GoogleFonts.poppins(fontSize: 12.h, color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }

  Widget _signuptn() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 30.h, right: 30.h),
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.h)), color: AppColor.nblue),
      child: GestureDetector(
        onTap: () {},
        child: Center(
            child: Text(
          "Sign Up",
          style: GoogleFonts.poppins(fontSize: 12.h, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }

  Widget _meetingbtn() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 30.h, right: 30.h),
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.h)), color: AppColor.purple),
      child: GestureDetector(
        onTap: () {},
        child: Center(
            child: Text(
          "Just here for a meeting",
          style: GoogleFonts.poppins(fontSize: 12.h, color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
