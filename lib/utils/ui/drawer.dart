import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EndDrawer extends StatefulWidget {
  @override
  _EndDrawerState createState() => new _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: new Drawer(
          child: new ListView(padding: EdgeInsets.zero, children: <Widget>[
            Row(children: [
              Image.asset(
                "assets/images/jasmine.png",
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Stack(
                  children: [
                    Text("James McDaniel",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text("CEO / Founder @ SIlicon Valley",
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: Color(0xff6D6D6D))),
                    ),
                  ],
                ),
              ),
            ]),
            Column(
              children: [
                new ListTile(
                  title: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: new Text(
                      "Connections ",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 25),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffFFFFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset("assets/images/girl2.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: new Column(
                          children: [
                            Container(
                              child: Text(
                                "Jasmin G. Rangel",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: Text(
                                "2x Founder,  B2B Advisor",
                                style: GoogleFonts.poppins(
                                    fontSize: 10, color: Color(0xff6D6D6D)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        child: Image.asset("assets/images/green.png"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset("assets/images/boy1.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: new Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Jonathan D. Dye",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Image.asset("assets/images/green.png"),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                "Mentor for Social media Startups",
                                style: GoogleFonts.poppins(
                                    fontSize: 10, color: Color(0xff6D6D6D)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                  child: new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset("assets/images/boy2.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: new Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Ryan M. Reinhardt",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 35),
                                  child: Image.asset("assets/images/green.png"),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                "Student Entrepreneur @  Stanford",
                                style: GoogleFonts.poppins(
                                    fontSize: 10, color: Color(0xff6D6D6D)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Pages You Manage",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("assets/images/logocircle.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Image.asset("assets/images/arrowUp.png"),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 40),
                            child: Text(
                              "Founders Link",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text("945",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child:
                                      Image.asset("assets/images/group.png")),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("300 Followers"),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("assets/images/anonymous.png"),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Anonymous Ventures",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Text(
                                  "4.9",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child:
                                      Image.asset("assets/images/group.png")),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "300 Followers",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 30, top: 3),
                  child: Text(
                    "Groups",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset("assets/images/womenfounders.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Women Founders",
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text("Next Meeting:",
                                        style:
                                            GoogleFonts.poppins(fontSize: 10)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color(0xffA1C6FD),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      " wendesday @ 4 pm",
                                      style: GoogleFonts.poppins(fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/images/girl1.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/girl2.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/boy1.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/boy2.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text("100 Active Members",
                                        style:
                                            GoogleFonts.poppins(fontSize: 10)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child:
                                        Image.asset("assets/images/green.png"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 14,
                        ),
                        child: Image.asset(
                          "assets/images/blackvs.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Black VCs",
                                style: GoogleFonts.poppins(fontSize: 14),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Text("Next Meeting:",
                                        style:
                                            GoogleFonts.poppins(fontSize: 10)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 15),
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color(0xffA1C6FD),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Text(
                                      " wendesday @ 4 pm",
                                      style: GoogleFonts.poppins(fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 2),
                              child: Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      "assets/images/girl1.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/girl2.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/boy1.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Image.asset(
                                      "assets/images/boy2.png",
                                      width: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text("100 Active Members",
                                        style:
                                            GoogleFonts.poppins(fontSize: 10)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child:
                                        Image.asset("assets/images/green.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("assets/images/profile.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Profile Settings",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/logout.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Log out",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      "assets/images/logoFounder.png",
                      width: 110,
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
