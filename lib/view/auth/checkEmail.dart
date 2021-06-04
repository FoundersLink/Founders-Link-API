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
  void handlePressedRegister() async {
    // setState(() {
    //   loading = true;
    // });
    // try {
    //   var baseUrl = 'https://soma-tec.herokuapp.com/';
    //   var url = '$baseUrl/auth/signup';
    //   Map<String, String> requestHeaders = {
    //     'Content-type': 'application/json',
    //     'Accept': 'application/json',
    //   };
    //   var response = await http.post(url,
    //       headers: requestHeaders,
    //       body: jsonEncode(<String, String>{
    //         'name': '$name',
    //         'phoneNumber': '$phoneNumber',
    //         'password': '$password'
    //       }));
    //   Map<String, dynamic> body = jsonDecode(response.body);
    //   if (response.statusCode == 409) {
    //     setState(() {
    //       phoneErr = body['message'];
    //       loading = false;
    //       errors = '';
    //       hasError = false;
    //     });
    //   } else if (response.statusCode == 400) {
    //     for (var i = 0; i <= body['message'].length - 1; i++) {
    //       setState(() {
    //         errors = body['message'][i];
    //         loading = false;
    //         hasError = false;
    //       });
    //     }
    //   } else {
    //     setState(() {
    //       hasError = false;
    //     });
    //     if (response.statusCode == 201) {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) =>
    //                 // VerifyView(phoneNumber: phoneNumber.toString())),
    //       );
    //     }
    //   }
    // } catch (err) {
    //   print(err);
    // }
  }
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
