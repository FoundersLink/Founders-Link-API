import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:founder_link/HelperClass/dart/heplerclass.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:founder_link/views/login/login_founder/login_founder2.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFounder extends StatefulWidget {
  @override
  _LoginFounderState createState() => _LoginFounderState();
}

class _LoginFounderState extends State<LoginFounder> {
  String selectedIndustry, selectedLocation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _logo(),
                  _userText(),
                  _userType(),
                  _nicheText(),
                  chipList(),
                  _industryDropdown(),
                  _locationDropdown(),
                  _continueBtn()
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

  Widget _userText() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.h, left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("Who are You ?", style: GoogleFonts.poppins(fontSize: 15.h, fontWeight: FontWeight.bold))],
      ),
    );
  }

  Widget _userType() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 20.h, left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image.asset(
                AppImages.graduate,
                width: 50.r,
                height: 50.r,
              ),
              Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: Text("Student",
                      style: GoogleFonts.poppins(
                        fontSize: 10.h,
                      )))
            ],
          ),
          Column(
            children: [
              Image.asset(
                AppImages.team,
                width: 50.r,
                height: 50.r,
              ),
              Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: Text("Team Member",
                      style: GoogleFonts.poppins(
                        fontSize: 10.h,
                      )))
            ],
          ),
          Column(
            children: [
              Image.asset(
                AppImages.founder,
                width: 50.r,
                height: 50.r,
              ),
              Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: Text("Founder",
                      style: GoogleFonts.poppins(
                        fontSize: 10.h,
                      )))
            ],
          ),
          Column(
            children: [
              Image.asset(
                AppImages.profile,
                width: 50.r,
                height: 50.r,
              ),
              Container(
                  margin: EdgeInsets.only(top: 5.h),
                  child: Text("Investor",
                      style: GoogleFonts.poppins(
                        fontSize: 10.h,
                      )))
            ],
          ),
        ],
      ),
    );
  }

  Widget _nicheText() {
    return Container(
      margin: EdgeInsets.only(top: 10.h, bottom: 5.h, right: 20.h, left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("What is your Niche ? (max 3)", style: GoogleFonts.poppins(fontSize: 15.h, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  chipList() {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: <Widget>[
        _buildChip('womenfounder', AppImages.founder),
        _buildChip('Founder', AppImages.founder),
        _buildChip('LatinxFounder', AppImages.founder),
        _buildChip('Founder', AppImages.founder),
        _buildChip('Founder', AppImages.founder),
        _buildChip('womenfounder', AppImages.founder),
        _buildChip('Founder', AppImages.founder),
      ],
    );
  }

  Widget _buildChip(String label, var img) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: Image.asset(
        img,
        width: 30,
        height: 30,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[200],
      elevation: 1.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(5.0),
    );
  }

  Widget _industryDropdown() {
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
              "What is your Industry ?",
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
            child: DropdownSearch<String>(
              showSearchBox: true,
              dropdownSearchDecoration: InputDecoration(
                // hintText: null,
                // labelText: "Whar is Your Indusry?",
                contentPadding: EdgeInsets.only(
                  left: 10,
                ),
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              searchBoxDecoration: InputDecoration(
                hintText: "Search Indusry",
              ),
              mode: Mode.DIALOG,
              // showSelectedItem: true,
              items: industryList,
              // label: "Indusry",
              itemAsString: (item) => item,
              hint: "Choose Indusry",
              // popupItemDisabled: (String s) => s.startsWith('I'),
              onChanged: (value) {
                selectedIndustry = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _locationDropdown() {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
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
              "Where are You Located ?",
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
            child: DropdownSearch<String>(
              showSearchBox: true,
              dropdownSearchDecoration: InputDecoration(
                // hintText: null,
                // labelText: "Whar is Your Indusry?",
                contentPadding: EdgeInsets.only(
                  left: 10,
                ),
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              searchBoxDecoration: InputDecoration(
                hintText: "Search",
              ),
              mode: Mode.DIALOG,
              // showSelectedItem: true,
              items: locationList,
              // label: "Locationchoose",
              itemAsString: (item) => item,
              hint: "Choose Location",
              // popupItemDisabled: (String s) => s.startsWith('I'),
              onChanged: (value) {
                selectedLocation = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _continueBtn() {
    return GestureDetector(
      onTap: () {
        //  Get.to(()=>Signup());
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 10.h,
          left: 30.h,
          right: 30.h,
        ),
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.h)), color: Colors.black),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFounder2()));
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
