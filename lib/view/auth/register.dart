import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:founderslink/utils/mixins/validation.dart';
import 'package:founderslink/utils/ui/founderlinklayout.dart';
import 'package:founderslink/view/auth/checkEmail.dart';
import 'package:founderslink/widgets/Button.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();

  bool autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FounderLinkLayout(),
          Container(
            margin: EdgeInsets.only(top: 140),
            child: Expanded(
              child: ListView(
                children: [
                  Form(
                    key: formKey,
                    autovalidate: autoValidate,
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Text(
                                  "First Name",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: TextFormField(
                                  controller: _firstName,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    filled: true,
                                    hintText: 'First Name',
                                    hintStyle: TextStyle(
                                        color: Color(0xffCDCDCD),
                                        fontWeight: FontWeight.bold),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffCDCDCD), width: 2),
                                    ),
                                  ),
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  validator: (value) =>
                                      validateFirstName(value),
                                  inputFormatters: [
                                    new WhitelistingTextInputFormatter(
                                        RegExp("[a-zA-Z]")),
                                  ],
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
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Text(
                                  "Last Name",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 15),
                                child: TextFormField(
                                  controller: _lastName,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusColor: Colors.white,
                                    filled: true,
                                    hintText: 'Last Name',
                                    hintStyle: TextStyle(
                                        color: Color(0xffCDCDCD),
                                        fontWeight: FontWeight.bold),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xffCDCDCD), width: 2),
                                    ),
                                  ),
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  validator: (value) => validateLastName(value),
                                  inputFormatters: [
                                    new WhitelistingTextInputFormatter(
                                        RegExp("[a-zA-Z]")),
                                  ],
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
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, bottom: 5),
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
                                  controller: _email,
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
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, bottom: 5),
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
                                  controller: _pass,
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
                          margin: EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 20, bottom: 5),
                                child: Text(
                                  "Confirm Password",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, right: 20),
                                child: TextFormField(
                                  controller: _confirmPass,
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
                                  validator: (value) =>
                                      validateConfirmPassword(value),
                                ),
                              ),
                            ],
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
                                    if (formKey.currentState.validate())
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CheckEmail())),
                                      }
                                    else
                                      {
                                        setState(() {
                                          autoValidate = true;
                                        }),
                                      }
                                  }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
