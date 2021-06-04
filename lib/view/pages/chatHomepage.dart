import 'package:flutter/material.dart';
import 'package:founderslink/models/niche.dart';
import 'package:founderslink/utils/ui/activeLobbies.dart';
import 'package:founderslink/utils/ui/drawer.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/pages/Home.dart';
import 'package:founderslink/widgets/Search.dart';
import 'package:founderslink/widgets/joinButton.dart';
import 'package:founderslink/widgets/startCht.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  List<Niche> niche = [
    Niche(
      nicheTypes: "⚖ IncarceratedFounder",
    ),
    Niche(nicheTypes: " ⚔VeteranFounder"),
    Niche(nicheTypes: "👴💼 Mentor"),
    Niche(nicheTypes: "🚋 ImmigrantFounder"),
    Niche(nicheTypes: "👩💼 womenfounder"),
    Niche(nicheTypes: "‍👨🏾📈BlackVC"),
  ];
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool openDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: Container(
          child: InkWell(
        child: Image.asset("assets/images/floating.png"),
        onTap: () {
          setState(() {
            openDrawer = true;
          });
        },
      )),
      drawer: SafeArea(
        child: Theme(
          data: ThemeData(canvasColor: Color(0xffFBFBFB)),
          child: EndDrawer(),
        ),
      ),
      body: Stack(
        children: [
          FounderLinkLayout(),
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.only(left: 80),
            child: Visibility(
              visible: openDrawer,
              child: Container(
                height: 130,
                width: 230,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                          offset: Offset(0, 5)),
                    ]),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.black12,
                        child: InkWell(
                          child: Icon(
                            Icons.close,
                            color: Color(0xff5FD3FF),
                          ),
                          onTap: () {
                            setState(() {
                              openDrawer = false;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          child: Image.asset("assets/images/theteam.png"),
                        ),
                        Container(
                            child: Text(
                          "Start Public Lobby",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )),
                      ],
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        child: Row(
                      children: [
                        Container(
                          child: Image.asset("assets/images/private.png"),
                        ),
                        Container(
                            child: Text(
                          " Start Private Lobby",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 95, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: InkWell(
                      child: Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      onTap: () {
                        _scaffoldKey.currentState.openDrawer();
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.more_vert_outlined,
                          color: Color(0xff6D6D6D),
                          size: 30,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.notifications_none,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/myPitch.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Recruiting",
                                    style: GoogleFonts.poppins(
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Find Your Audience",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      InkWell(
                                        child: Image.asset(
                                            'assets/images/graduate.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Student",
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            'assets/images/people.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Team Memebers",
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            'assets/images/founder.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Founders",
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Image.asset(
                                            'assets/images/gentle.png'),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          "Investors",
                                          style:
                                              GoogleFonts.poppins(fontSize: 12),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Most active Niches",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            right: 3,
                                            left: 3,
                                            top: 6,
                                            bottom: 6),
                                        decoration: BoxDecoration(
                                          color: Color(0xffCDCDCD),
                                          borderRadius:
                                              new BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                        child: Text(
                                          niche[0].nicheTypes,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            right: 3,
                                            left: 3,
                                            top: 6,
                                            bottom: 6),
                                        decoration: BoxDecoration(
                                          color: Color(0xffCDCDCD),
                                          borderRadius:
                                              new BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                        child: Text(
                                          niche[1].nicheTypes,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            right: 3,
                                            left: 3,
                                            top: 6,
                                            bottom: 6),
                                        decoration: BoxDecoration(
                                          color: Color(0xffCDCDCD),
                                          borderRadius:
                                              new BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                        child: Text(
                                          niche[2].nicheTypes,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 6,
                                              bottom: 6),
                                          decoration: BoxDecoration(
                                            color: Color(0xffCDCDCD),
                                            borderRadius:
                                                new BorderRadius.circular(
                                              5.0,
                                            ),
                                          ),
                                          child: Text(
                                            niche[3].nicheTypes,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 6,
                                              bottom: 6),
                                          decoration: BoxDecoration(
                                            color: Color(0xffCDCDCD),
                                            borderRadius:
                                                new BorderRadius.circular(
                                              5.0,
                                            ),
                                          ),
                                          child: Text(
                                            niche[4].nicheTypes,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              right: 3,
                                              left: 3,
                                              top: 6,
                                              bottom: 6),
                                          decoration: BoxDecoration(
                                            color: Color(0xffCDCDCD),
                                            borderRadius:
                                                new BorderRadius.circular(
                                              5.0,
                                            ),
                                          ),
                                          child: Text(
                                            niche[5].nicheTypes,
                                            style: GoogleFonts.poppins(
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ActiveLobbies(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SearchPage(),
          ),
        ],
      ),
    );
  }
}
