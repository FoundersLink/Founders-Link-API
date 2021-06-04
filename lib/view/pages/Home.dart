import 'package:flutter/material.dart';
import 'package:founderslink/models/interests.dart';
import 'package:founderslink/models/niche.dart';
import 'package:founderslink/models/peopleinNiche.dart';
import 'package:founderslink/utils/ui/activeLobbies.dart';
import 'package:founderslink/utils/ui/drawer.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/widgets/Search.dart';
import 'package:founderslink/widgets/joinButton.dart';
import 'package:founderslink/widgets/nichePeople.dart';
import 'package:founderslink/widgets/officeHours.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<PeopleNiche> peopleNiche = [
    PeopleNiche(
      profile: "assets/images/girl2.png",
      name: "Jasmin G. Rangel",
      description: "2x Founder,  B2B Advisor",
      addpeople: "assets/images/peopleadd.png",
    ),
    PeopleNiche(
      profile: "assets/images/boy2.png",
      name: "Jonathan D. Dye",
      description: "Mentor for Social media Startups",
      addpeople: "assets/images/peopleadd.png",
    ),
    PeopleNiche(
      profile: "assets/images/boy1.png",
      name: "Ryan M. Reinhardt",
      description: "Student Entrepreneur @  Stanford",
      addpeople: "assets/images/peopleadd.png",
    ),
    PeopleNiche(
      profile: "assets/images/girl2.png",
      name: "Jasmin G. Rangel",
      description: "2x Founder,  B2B Advisor",
      addpeople: "assets/images/peopleadd.png",
    ),
  ];
  List<Interests> interests = [
    Interests(
      title: "Recruiting",
      subtitle: "Meet potential co-founders, interns, and early employees.",
    ),
    Interests(
      title: "Collaborating",
      subtitle: "Other students and entrepreneurs to collaborate with",
    ),
    Interests(
      title: "🔭 Discovery",
      subtitle: "Discover founders and investors outside your network ",
    ),
    Interests(
      title: " 🧙‍ Mentoring",
      subtitle: "Give or recieve advice from professionals in your community ",
    ),
    Interests(
      title: " Pitch Feedback ",
      subtitle:
          "Get feedback on pitching, business strategy, hiring techniques ",
    ),
    Interests(
      title: "Beta Testing",
      subtitle: "Speak with potential and active beta users of your product.",
    ),
    Interests(
      title: "💸 Venture Capital",
      subtitle: "Meet investors looking to support niche founders ",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: Theme(
          data: ThemeData(canvasColor: Color(0xffFBFBFB)),
          child: EndDrawer(),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(
                  right: 20,
                ),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/logoFounder.png",
                  width: 650,
                )),
            Container(
              margin: EdgeInsets.only(top: 75, left: 10, right: 10),
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
                            Icons.calendar_today,
                            size: 25,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.more_vert_outlined,
                            color: Color(0xff6D6D6D),
                            size: 25,
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.notifications_none,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 120,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "People In Your Niche",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Container(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: peopleNiche.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(top: 5),
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return NichePeople(
                          profile: peopleNiche[index].profile,
                          name: peopleNiche[index].name,
                          description: peopleNiche[index].description,
                          addpeople: peopleNiche[index].addpeople,
                        );
                      },
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              offset: Offset(0, 5)),
                        ],
                      ),
                      child: Text("View more People",
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                          )),
                    ),
                    onTap: () {},
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Office Hours ",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        OfficeHours(),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 25, top: 5),
                    child: Text("Interests",
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/recruit.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[0].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[0].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/pitch.png"),
                                    ),
                                    Container(
                                      child: Text(
                                        interests[4].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[4].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          "assets/images/shake.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[1].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[1].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child:
                                          Image.asset("assets/images/beta.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[5].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[5].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[2].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[2].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[6].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[6].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 190,
                          padding: EdgeInsets.only(
                              left: 3, right: 3, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            color: Color(0xffCDCDCD),
                            borderRadius: new BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child:
                                          Image.asset("assets/images/saza.png"),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        interests[3].title,
                                        style:
                                            GoogleFonts.poppins(fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  interests[3].subtitle,
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
