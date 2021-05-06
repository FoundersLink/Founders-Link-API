import 'package:flutter/material.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/checkEmail.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FounderLinkLayout(),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 140),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 290, bottom: 5),
                            child: Text(
                              "First Name",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                    color: Color(0xffCDCDCD),
                                    fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCDCDCD), width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 290, bottom: 5),
                            child: Text(
                              "Last Name",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                    color: Color(0xffCDCDCD),
                                    fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCDCDCD), width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 320, bottom: 5),
                            child: Text(
                              "Email",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: 'Johndoe@gmail.com',
                                hintStyle: TextStyle(
                                    color: Color(0xffCDCDCD),
                                    fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCDCDCD), width: 2),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 290, bottom: 5),
                            child: Text(
                              "Password",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: '**********',
                                hintStyle: TextStyle(
                                    color: Color(0xffCDCDCD),
                                    fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCDCDCD), width: 2),
                                ),
                              ),
                              obscuringCharacter: "*",
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 290, bottom: 5),
                            child: Text(
                              "Password",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                filled: true,
                                hintText: '**********',
                                hintStyle: GoogleFonts.poppins(
                                    color: Color(0xffCDCDCD),
                                    fontWeight: FontWeight.bold),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xffCDCDCD), width: 2),
                                ),
                              ),
                              obscuringCharacter: "*",
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: MyButton(
                          child: Text(
                            "Continue",
                            style: GoogleFonts.poppins(fontSize: 18),
                          ),
                          onPressed: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CheckEmail())),
                              }),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
