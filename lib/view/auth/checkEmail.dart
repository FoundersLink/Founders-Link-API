import 'package:flutter/material.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/settingEmail.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckEmail extends StatefulWidget {
  @override
  _CheckEmailState createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FounderLinkLayout(),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 200),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/check2021.png",
                    
                  )),
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Check Your Email for confirmation. ",
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 200),
                child: MyButton(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingUpEmail())),
                        }),
              )
            ],
          )
        ],
      ),
    );
  }
}
