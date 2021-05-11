import 'package:flutter/material.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/login.dart';
import 'package:founderslink/view/pages/completeProfile.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingUpEmail extends StatefulWidget {
  @override
  _SettingUpEmailState createState() => _SettingUpEmailState();
}

class _SettingUpEmailState extends State<SettingUpEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FounderLinkLayout(),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 250, left: 62, right: 62),
                alignment: Alignment.topCenter,
                child: Text(
                  "You are #105 on the waitlist.",
                  style: GoogleFonts.poppins(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                alignment: Alignment.topCenter,
                child: Text(
                  "We are currently setting up your profile and will send you an email when its active.",
                  style: GoogleFonts.poppins(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 300),
                child: MyButton(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompleteProfile())),
                        }),
              )
            ],
          )
        ],
      ),
    );
  }
}
