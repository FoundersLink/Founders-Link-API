import 'package:flutter/material.dart';

class FounderLinkLayout extends StatefulWidget {
  @override
  _FounderLinkLayoutState createState() => _FounderLinkLayoutState();
}

class _FounderLinkLayoutState extends State<FounderLinkLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/images/logoFounder.png",
              width: 650,
            ))
            );
  }
}
