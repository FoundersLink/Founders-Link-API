import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:founderslink/utils/mixins/validation.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/register.dart';
import 'package:founderslink/view/pages/chat.dart';
import 'package:founderslink/view/pages/chatHomepage.dart';
import 'package:founderslink/view/pages/completeProfile.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  bool autoValidate = false;
  bool loading = false;
  bool agree = false;
  bool hasError = false;
  var errors;
  void handlePressedLogin() async {
    Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chat()));
    setState(() {
      loading = true;
    });
    try {
      var baseUrl = 'https://soma-tec.herokuapp.com';
      var url = '$baseUrl/user/login';
      Map<String, String> requestHeaders = {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
      var response = await http.post(url,
          headers: requestHeaders,
          body: jsonEncode(<String, String>{
            'email': email.text.toString(),
            'password': pass.text.toString(),
          }));
      Map<String, dynamic> body = jsonDecode(response.body);
      if (response.statusCode == 409) {
        setState(() {
          loading = false;
          errors = '';
          hasError = false;
        });
      } else if (response.statusCode == 400) {
        for (var i = 0; i <= body['message'].length - 1; i++) {
          setState(() {
            errors = body['message'][i];
            loading = false;
            hasError = false;
          });
        }
      } else {
        setState(() {
          hasError = false;
        });
        if (response.statusCode == 201) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          setState(() {
            prefs.setString('token', body['data']);
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Chat()));
        }
      }
    } catch (err) {
      print(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        FounderLinkLayout(),
        Expanded(
          child: ListView(
            children: [
              Form(
                key: formKey,
                autovalidate: autoValidate,
                child: Column(
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
                              controller: email,
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
                              validator: (value) => validateEmail(value),
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
                              controller: pass,
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
                              validator: (value) => validatePassword(value),
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
                                if (formKey.currentState.validate())
                                  handlePressedLogin()
                                else
                                  {
                                    setState(() {
                                      autoValidate = true;
                                    }),
                                  }
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
              ),
            ],
          ),
        )
      ],
    ));
  }
}
