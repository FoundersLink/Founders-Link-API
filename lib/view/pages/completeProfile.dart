import 'package:flutter/material.dart';
import 'package:founderslink/models/niche.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/checkEmail.dart';
import 'package:founderslink/view/auth/login.dart';
import 'package:founderslink/view/pages/chatFilter.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteProfile extends StatefulWidget {
  @override
  _CompleteProfileState createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  List<Niche> niche = [
    Niche(
      nicheTypes: "👩💼 womenfounder",
    ),
    Niche(
      nicheTypes: "👦💼 LatinxFounder",
    ),
    Niche(
      nicheTypes: "‍👨🏾📈BlackVC",
    ),
    Niche(
      nicheTypes: "👩🏿‍💼💼 BlackFounder",
    ),
    Niche(
      nicheTypes: "👨‍💼💼 Advisor",
    ),
    Niche(
      nicheTypes: "📈👩 WomenVC",
    ),
    Niche(
      nicheTypes: "📲 UI/UX",
    ),
    Niche(
      nicheTypes: "🌈📈 LGBTQA+VC",
    ),
    Niche(
      nicheTypes: "👩‍‍🎓LatinxVC",
    ),
    Niche(
      nicheTypes: "👨‍📈 GenZVC",
    ),
    Niche(
      nicheTypes: "🚀‍ earlybetatester",
    ),
    Niche(
      nicheTypes: "GenZfounders",
    ),
    Niche(
      nicheTypes: "AsianVC ",
    ),
    Niche(
      nicheTypes: "🌈📈 LGBTQA+Founders",
    ),
    Niche(
      nicheTypes: "👩🏻‍🤝‍Co-Founder",
    ),
    Niche(
      nicheTypes: "🎭GigWorker",
    ),
    Niche(
      nicheTypes: "⚖ IncarceratedFounder",
    ),
    Niche(
      nicheTypes: " ⚔ VeteranFounder",
    ),
    Niche(
      nicheTypes: " 👴💼 Mentor",
    ),
    Niche(
      nicheTypes: " 🚋 ImmigrantFounder",
    ),
    Niche(
      nicheTypes: " WhiteFounder",
    ),
    Niche(
      nicheTypes: " WhiteVC",
    ),
    Niche(
      nicheTypes: " AsianFounder",
    ),
    Niche(
      nicheTypes: "📈 IndianVC ",
    ),
    Niche(
      nicheTypes: " IndianFounder ",
    ),
  ];
  int _value = 1;
  var _isSelected = false;
  Color _color = Colors.red;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/images/logoFounder.png",
                  width: 650,
                )),
            Container(
              margin: EdgeInsets.only(left: 10, top: 110),
              child: Text(
                "Who are You ?",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 145,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              child: filterChipWidget(
                                  chipName: 'assets/images/graduate.png'),
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
                        Column(
                          children: [
                            Container(
                              child: filterChipWidget(
                                  chipName: 'assets/images/people.png'),
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
                        Column(
                          children: [
                            Container(
                              child: filterChipWidget(
                                  chipName: 'assets/images/founder.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Founders",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: filterChipWidget(
                                  chipName: 'assets/images/gentle.png'),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Investors",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 70, top: 10),
                    child: Text(
                      "Who are you looking to connect with ?",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                child:
                                    Image.asset("assets/images/graduate.png"),
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
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                child: Image.asset("assets/images/people.png"),
                              ),
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
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                child: Image.asset("assets/images/founder.png"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Founders",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: CircleAvatar(
                                child: Image.asset("assets/images/gentle.png"),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Investors",
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "What is your Niche ?  (choose a maximum of 5)",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  right: 3, left: 3, top: 6, bottom: 6),
                              decoration: BoxDecoration(
                                color: Color(0xffCDCDCD),
                                borderRadius: new BorderRadius.circular(
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
                                  right: 3, left: 3, top: 6, bottom: 6),
                              decoration: BoxDecoration(
                                color: Color(0xffCDCDCD),
                                borderRadius: new BorderRadius.circular(
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
                                  right: 3, left: 3, top: 6, bottom: 6),
                              decoration: BoxDecoration(
                                color: Color(0xffCDCDCD),
                                borderRadius: new BorderRadius.circular(
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
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
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
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
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
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[5].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[6].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[7].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[8].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[9].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                // margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[10].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                // margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/whiteppl.png",
                                    ),
                                    Text(
                                      niche[11].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 5, left: 5, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/whiteB.png",
                                    ),
                                    Image.asset("assets/images/statistic.png"),
                                    Text(
                                      niche[12].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[13].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[14].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[15].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[16].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[17].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 1, left: 1, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[18].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Text(
                                  niche[19].nicheTypes,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/whitefounder.png"),
                                    Text(
                                      niche[20].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/whitefounder.png"),
                                    Image.asset("assets/images/statistic.png"),
                                    Text(
                                      niche[21].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/whitefounder.png"),
                                    Image.asset("assets/images/tie.png"),
                                    Text(
                                      niche[22].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/indian.png"),
                                    Text(
                                      niche[23].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    right: 3, left: 3, top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/indian.png"),
                                    Image.asset("assets/images/tie.png"),
                                    Text(
                                      niche[24].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 90),
                    child: Text(
                      "What is your Industry ? ",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 58,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3)),
                      border: Border.all(color: Color(0xffEDF1F7), width: 2),
                    ),
                    child: DropdownButton(
                        isExpanded: true,
                        underline: SizedBox(),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "FinTech",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Business Management",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Software development",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              value: 3),
                          DropdownMenuItem(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Fashion",
                                  style: GoogleFonts.poppins(fontSize: 15),
                                ),
                              ),
                              value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 90),
                    child: Text(
                      "Where are You Located ?",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        filled: true,
                        hintText: 'Boulder, CO',
                        hintStyle: TextStyle(
                            color: Color(0xffCDCDCD),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xffCDCDCD), width: 2),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
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
                                      builder: (context) => ChatFilter())),
                            }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // ),
      //     )
      //   ],
      // )
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: CircleAvatar(child: Image.asset(widget.chipName)),
      selected: _isSelected,
      backgroundColor: Colors.white,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.blue,
      checkmarkColor: Colors.white,
    );
  }
}
