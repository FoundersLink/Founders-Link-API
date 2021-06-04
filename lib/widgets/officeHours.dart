import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OfficeHours extends StatefulWidget {
  @override
  _OfficeHoursState createState() => _OfficeHoursState();
}

class _OfficeHoursState extends State<OfficeHours> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 130),
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 10, left: 5),
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 210,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                offset: Offset(0, 5)),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child:
                                        Image.asset("assets/images/boy2.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Ryan M. Reinhardt",
                                            style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 141,
                                          child: Text(
                                            "Mentor for Social media Startups",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Color(0xff6D6D6D)),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.calendar_today),
                                    ),
                                    Container(
                                      width: 141,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Wed May 19 @ 4:00 p - 30 min - 10 slots left ",
                                        style: GoogleFonts.poppins(fontSize: 8),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 210,
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                offset: Offset(0, 5)),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child:
                                        Image.asset("assets/images/boy1.png"),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Jonathan D. Dye",
                                            style: GoogleFonts.poppins(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 141,
                                          child: Text(
                                            "Mentor for Social media Startups",
                                            style: GoogleFonts.poppins(
                                                fontSize: 10,
                                                color: Color(0xff6D6D6D)),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(Icons.calendar_today),
                                    ),
                                    Container(
                                      width: 141,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Wed May 19 @ 4:00 p - 30 min - 10 slots left ",
                                        style: GoogleFonts.poppins(fontSize: 8),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
