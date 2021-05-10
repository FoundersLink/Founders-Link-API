import 'package:flutter/material.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/register.dart';
import 'package:founderslink/view/pages/chat.dart';
import 'package:founderslink/view/pages/chatHomepage.dart';
import 'package:founderslink/view/pages/completeProfile.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FounderLinkLayout(),
        Expanded(
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 210),
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 320, bottom: 5),
                          child: Text(
                            "Email",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              filled: true,
                              hintText: 'Johndoe@gmail.com',
                              hintStyle: TextStyle(
                                  color: Color(0xffCDCDCD),
                                  fontWeight: FontWeight.bold),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCDCDCD), width: 2),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 290, bottom: 5),
                          child: Text(
                            "Password",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              filled: true,
                              hintText: '**********',
                              hintStyle: TextStyle(
                                  color: Color(0xffCDCDCD),
                                  fontWeight: FontWeight.bold),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffCDCDCD), width: 2),
                              ),
                            ),
                            obscuringCharacter: "*",
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: MyButton(
                        child: Text(
                          " Login  ",
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Chat())),
                            }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: MyButton(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(fontSize: 18),
                        ),
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register())),
                            }),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
