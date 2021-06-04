import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class NichePeople extends StatefulWidget {
  final profile;
  final name;
  final description;
  final addpeople;

  NichePeople({
    @required this.profile,
    @required this.name,
    @required this.description,
    @required this.addpeople,
  });
  @override
  _NichePeopleState createState() => _NichePeopleState();
}

class _NichePeopleState extends State<NichePeople> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 5),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(widget.profile),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          widget.name,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.description,
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: Color(0xff6D6D6D)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 25),
                  child: Image.asset(widget.addpeople))
            ],
          ),
        ],
      ),
    );
  }
}
