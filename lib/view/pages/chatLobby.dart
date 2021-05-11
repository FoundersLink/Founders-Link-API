import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatLobby extends StatefulWidget {
  @override
  _ChatLobbyState createState() => _ChatLobbyState();
}

class _ChatLobbyState extends State<ChatLobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Raising Pre-Seed round for Saas Company",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Hosts",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/sarah.png"),
                          ),
                          Container(
                            child: Text(
                              "Sarah",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Alice.png"),
                          ),
                          Container(
                            child: Text(
                              "Alice",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/Fred.png"),
                          ),
                          Container(
                            child: Text(
                              "Fred",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/James.png"),
                          ),
                          Container(
                            child: Text(
                              "James",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5, right: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/tiffany.png"),
                          ),
                          Container(
                            child: Text(
                              "Tiffany",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, color: Color(0xff6D6D6D)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Shared Documents",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/word.png"),
                          ),
                          Container(
                            child: Text(
                              "Term Sheet Example",
                              style: GoogleFonts.poppins(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Shared by Sarah",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Image.asset("assets/images/sarah.png"),
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/pdf.png"),
                          ),
                          Container(
                            child: Text(
                              "Pitch Deck Example",
                              style: GoogleFonts.poppins(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Shared by Tiffany",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Image.asset("assets/images/tiffany.png"),
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset("assets/images/excel.png"),
                          ),
                          Container(
                            child: Text(
                              "VC Database",
                              style: GoogleFonts.poppins(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "Shared by Alice",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Image.asset("assets/images/Alice.png"),
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text("Audience",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/Tallfred.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Tallalice.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Talljames.png",
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/Talltiffany.png",
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                              child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/Talljames.png",
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(top: 60, left: 45),
                                decoration: BoxDecoration(
                                    color: Color(0xff3468EE),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                child: Visibility(
                                  visible: true,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+ 1",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          ),
                          Container(
                              child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/Tallfred.png",
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(top: 60, left: 45),
                                decoration: BoxDecoration(
                                    color: Color(0xff3468EE),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.0))),
                                child: Visibility(
                                  visible: true,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "+ 2",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallfred.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Talljames.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/Tallalice.png",
                            ),
                          ),
                          Container(
                              child: Image.asset(
                            "assets/images/Talljames.png",
                          )),
                          Container(
                            child: Image.asset(
                              "assets/images/Talltiffany.png",
                            ),
                          ),
                          Container(
                            child: Image.asset(
                              "assets/images/Tallfred.png",
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      child: FlatButton(
                        child: Text(
                          "Leave",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.red,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 120,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Lobby Info",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 120,
                      child: MaterialButton(
                        child: Text(
                          "Raise Hand",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Color(0xff2CC09C)),
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xff2CC09C),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () => {},
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
