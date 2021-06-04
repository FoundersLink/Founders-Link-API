import 'package:flutter/material.dart';
import 'package:founderslink/models/niche.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/checkEmail.dart';
import 'package:founderslink/view/auth/login.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ChatFilter extends StatefulWidget {
  @override
  _ChatFilterState createState() => _ChatFilterState();
}

class _ChatFilterState extends State<ChatFilter> {
  @override
  List<Niche> niche = [
    Niche(
      nicheTypes: "👩🏿‍💼 BlackFounder",
    ),
    Niche(
      nicheTypes: "👨‍💼 Advisor",
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
      nicheTypes: "👩‍🎓 studentfounders",
    ),
    Niche(
      nicheTypes: "🥎👨‍📈 GenZVC",
    ),
    Niche(
      nicheTypes: "🙋🚀‍ earlybetatester",
    ),
    Niche(
      nicheTypes: "👩‍🎓 studentfounders",
    ),
    Niche(
      nicheTypes: "👩‍💻 Developer",
    ),
    Niche(
      nicheTypes: "🌈📈 LGBTQA+Founders",
    ),
    Niche(
      nicheTypes: "👩🏻‍🤝‍Co-Founder",
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
  ];
  int _value = 1;
  int _industryvalue = 1;
  int _verifyvalue = 1;
  var _isSelected = false;
  Color _color = Colors.red;
  bool anyDistance = false;

  void _onAnyDistanceChanged(bool newValue) => setState(() {
        anyDistance = newValue;

        if (anyDistance) {
        } else {}
      });
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 10),
              child: Row(
                children: [
                  Container(child: Icon(Icons.arrow_back_ios)),
                  Container(
                    child: Text("I’m Looking to speak with...",
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 100),
              child: Text(
                "User",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 130,
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
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Niche",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 5),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  right: 4, left: 4, top: 5, bottom: 5),
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
                                  right: 4, left: 4, top: 5, bottom: 5),
                              margin: EdgeInsets.only(left: 5),
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
                                  right: 4, left: 4, top: 5, bottom: 5),
                              margin: EdgeInsets.only(left: 5),
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
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 4, left: 4, top: 5, bottom: 5),
                              margin: EdgeInsets.only(left: 5),
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
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 4, left: 4, top: 5, bottom: 5),
                                margin: EdgeInsets.only(left: 5),
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
                                margin: EdgeInsets.only(left: 5),
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
                                margin: EdgeInsets.only(left: 5),
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
                              // Container(
                              //   padding: EdgeInsets.only(
                              //       right: 1, left: 1, top: 6, bottom: 6),
                              //   decoration: BoxDecoration(
                              //     color: Color(0xffCDCDCD),
                              //     borderRadius: new BorderRadius.circular(
                              //       5.0,
                              //     ),
                              //   ),
                              //   child: Text(
                              //     niche[6].nicheTypes,
                              //     style: GoogleFonts.poppins(
                              //       fontSize: 12,
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 4, left: 4, top: 5, bottom: 5),
                                margin: EdgeInsets.only(right: 5),
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
                                    right: 4, left: 4, top: 6, bottom: 5),
                                margin: EdgeInsets.only(right: 5),
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
                                    right: 4, left: 4, top: 5, bottom: 5),
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
                          margin: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    right: 4, left: 4, top: 5, bottom: 5),
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
                                margin: EdgeInsets.only(left: 5),
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCDCD),
                                  borderRadius: new BorderRadius.circular(
                                    5.0,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      niche[11].nicheTypes,
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   padding: EdgeInsets.only(
                              //       right: 5, left: 5, top: 6, bottom: 6),
                              //   decoration: BoxDecoration(
                              //     color: Color(0xffCDCDCD),
                              //     borderRadius: new BorderRadius.circular(
                              //       5.0,
                              //     ),
                              //   ),
                              //   child: Row(
                              //     children: [
                              //       Image.asset(
                              //         "assets/images/whiteB.png",
                              //       ),
                              //       Image.asset("assets/images/statistic.png"),
                              //       Text(
                              //         niche[12].nicheTypes,
                              //         style: GoogleFonts.poppins(
                              //           fontSize: 12,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 5),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Text(
                        //           niche[13].nicheTypes,
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       right: 3, left: 3, top: 6, bottom: 6),
                        //   decoration: BoxDecoration(
                        //     color: Color(0xffCDCDCD),
                        //     borderRadius: new BorderRadius.circular(
                        //       5.0,
                        //     ),
                        //   ),
                        //   child: Text(
                        //     niche[14].nicheTypes,
                        //     style: GoogleFonts.poppins(
                        //       fontSize: 12,
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       right: 3, left: 3, top: 6, bottom: 6),
                        //   decoration: BoxDecoration(
                        //     color: Color(0xffCDCDCD),
                        //     borderRadius: new BorderRadius.circular(
                        //       5.0,
                        //     ),
                        //   ),
                        //   child: Text(
                        //     niche[15].nicheTypes,
                        //     style: GoogleFonts.poppins(
                        //       fontSize: 12,
                        //     ),
                        //   ),
                        // )
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 5),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 1, left: 1, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Text(
                        //           niche[16].nicheTypes,
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 1, left: 1, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Text(
                        //           niche[17].nicheTypes,
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 1, left: 1, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Text(
                        //           niche[18].nicheTypes,
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 5),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Text(
                        //           niche[19].nicheTypes,
                        //           style: GoogleFonts.poppins(
                        //             fontSize: 12,
                        //           ),
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Row(
                        //           children: [
                        //             Image.asset(
                        //                 "assets/images/whitefounder.png"),
                        //             Text(
                        //               niche[20].nicheTypes,
                        //               style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Row(
                        //           children: [
                        //             Image.asset(
                        //                 "assets/images/whitefounder.png"),
                        //             Image.asset("assets/images/statistic.png"),
                        //             Text(
                        //               niche[21].nicheTypes,
                        //               style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 5),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         margin: EdgeInsets.only(right: 10),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Row(
                        //           children: [
                        //             Image.asset(
                        //                 "assets/images/whitefounder.png"),
                        //             Image.asset("assets/images/tie.png"),
                        //             Text(
                        //               niche[22].nicheTypes,
                        //               style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         margin: EdgeInsets.only(right: 10),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Row(
                        //           children: [
                        //             Image.asset("assets/images/indian.png"),
                        //             Text(
                        //               niche[23].nicheTypes,
                        //               style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       Container(
                        //         padding: EdgeInsets.only(
                        //             right: 3, left: 3, top: 6, bottom: 6),
                        //         decoration: BoxDecoration(
                        //           color: Color(0xffCDCDCD),
                        //           borderRadius: new BorderRadius.circular(
                        //             5.0,
                        //           ),
                        //         ),
                        //         child: Row(
                        //           children: [
                        //             Image.asset("assets/images/indian.png"),
                        //             Image.asset("assets/images/tie.png"),
                        //             Text(
                        //               niche[24].nicheTypes,
                        //               style: GoogleFonts.poppins(
                        //                 fontSize: 12,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Location",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        filled: true,
                        hintText: 'Boulder, CO',
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.place,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
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
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "Distance",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: RangeSlider(
                      values: _currentRangeValues,
                      min: 0,
                      max: 100,
                      divisions: 10,
                      activeColor: Colors.black,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "0 Miles",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "100 Miles",
                            style: GoogleFonts.poppins(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 220),
                    alignment: Alignment.centerRight,
                    child: CheckboxListTile(
                      title: Text("Any Distance"),
                      value: anyDistance,
                      onChanged: _onAnyDistanceChanged,
                      controlAffinity: ListTileControlAffinity.leading,
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
                                "School",
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
                                "Business ",
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
                                  "graduated",
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
                                  "Campany",
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
                        value: _industryvalue,
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Industry",
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
                            _industryvalue = value;
                          });
                        }),
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
                        value: _verifyvalue,
                        items: [
                          DropdownMenuItem(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Verrified User",
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
                                "Non-verified user",
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
                                  "waiting for response",
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
                                  "iginored",
                                  style: GoogleFonts.poppins(fontSize: 15),
                                ),
                              ),
                              value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _verifyvalue = value;
                          });
                        }),
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
                                      builder: (context) => Login())),
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
