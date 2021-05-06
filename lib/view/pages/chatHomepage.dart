import 'package:flutter/material.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/widgets/Search.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FounderLinkLayout(),
          Container(
            margin: EdgeInsets.only(top: 95, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.menu,
                      size: 30,
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 230),
                child: Text(
                  "📱Technology",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 40, top: 10),
                child: Text(
                  "Find Your Audience",
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 330, left: 10),
                    child: Column(
                      children: [
                        Container(
                          child: CircleAvatar(
                            child: Image.asset("assets/images/graduate.png"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Student",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 330),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/images/people.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Team Memebers",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 330),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/images/founder.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Founders",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 330, right: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/images/gentle.png"),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Investors",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Text("Most active Niches"),
              )
            ],
          ),
          Container(
            child: SearchPage(),
          ),
        ],
      ),
    );
  }
}
