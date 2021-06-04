import 'package:flutter/material.dart';
import 'package:founderslink/room/room_screen.dart';
import 'package:founderslink/view/pages/chatLobby.dart';
import 'package:founderslink/widgets/joinButton.dart';
import 'package:founderslink/widgets/startsButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class ActiveLobbies extends StatefulWidget {
  @override
  _ActiveLobbiesState createState() => _ActiveLobbiesState();
}

class _ActiveLobbiesState extends State<ActiveLobbies> {
  String _userName = "jaja";
  String _channel = "randomChannel";
  ClientRole _role = ClientRole.Audience;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              "Active Lobbies",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Raising pre-seed round for SaaS company",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xffF26950)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_horiz_sharp),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset("assets/images/BG.png"),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/girl1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/girl2.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy2.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: JoinButton(
                          child: Text(
                            "Join",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          onPressed: () async {
                            await _handleMicPermission();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatLobby(
                                          channel: _channel,
                                          userName: _userName,
                                          role: _role,
                                        )));
                          }),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Colorado Founders and Investors Meet n Greet",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xff2CC09C)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_horiz_sharp),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset("assets/images/colorado.png"),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/girl1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/girl2.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy2.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: JoinButton(
                        child: Text(
                          "Join",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "First time B2B Founder looking for help ",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xff0178E2)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_horiz_sharp),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset("assets/images/firstTime.png"),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/girl1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/girl2.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy2.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: StartButton(
                        child: Text(
                          "Starts @ 7:00 pm",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "How to onboard your first 1000 users  ",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xffF26950)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(Icons.more_horiz_sharp),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset("assets/images/BG.png"),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset("assets/images/girl1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/girl2.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy1.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Image.asset("assets/images/boy2.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 25),
                      child: StartButton(
                        child: Text(
                          "Starts @ 7:00 pm",
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleMicPermission() {
    // final status = Permission.microphone.request();
    // print(status);
  }
}
