import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:founder_link/HelperClass/dart/heplerclass.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFounder2 extends StatefulWidget {
  @override
  _LoginFounder2State createState() => _LoginFounder2State();
}

class _LoginFounder2State extends State<LoginFounder2> {
  String selectedGoal, selectedExperinece;

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
                  _companyname(),
                  _title(),
                  _nicheText(),
                  chipList(),
                  _goalsDropdown(),
                  _expDropdown(),
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

  Widget _companyname() {
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
              "Name of Your Company",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.h),
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
                    hintText: "Founders Link",
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _title() {
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
              "Your Title",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.h),
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
                    hintText: "CMO", hintStyle: TextStyle(color: Colors.black), border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _nicheText() {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h, right: 20.h, left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text("Your Interests", style: GoogleFonts.poppins(fontSize: 16.h, fontWeight: FontWeight.bold))],
      ),
    );
  }

  chipList() {
    return Wrap(
      spacing: 5.0,
      runSpacing: 5.0,
      children: <Widget>[
        _buildChip('womenfounder'),
        _buildChip('Founder'),
        _buildChip('LatinxFounder'),
        _buildChip('Founder'),
        _buildChip('Founder'),
        _buildChip('womenfounder'),
        _buildChip('Founder'),
      ],
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.grey[200],
      elevation: 1.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

  Widget _goalsDropdown() {
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
              "Whar is Your Goal ?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16.h),
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
                hintText: "Search Goal",
              ),
              mode: Mode.DIALOG,
              // showSelectedItem: true,
              items: goalsList,
              // label: "Indusry",
              itemAsString: (item) => item,
              hint: "Choose Goal",
              // popupItemDisabled: (String s) => s.startsWith('I'),
              onChanged: (value) {
                selectedGoal = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _expDropdown() {
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
              "How much enterpenurship experinece do you have ?",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14.h),
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
                hintText: "Search experinece",
              ),
              mode: Mode.DIALOG,
              // showSelectedItem: true,
              items: experineceList,
              // label: "Indusry",
              itemAsString: (item) => item,
              hint: "Choose experinece",
              // popupItemDisabled: (String s) => s.startsWith('I'),
              onChanged: (value) {
                selectedExperinece = value;
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
            //  Get.to(()=>Register());
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
