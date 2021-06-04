import 'package:flutter/material.dart';
import 'package:flutter_boom_menu/flutter_boom_menu.dart';

class StartChat extends StatefulWidget {
  @override
  _StartChatState createState() => _StartChatState();
}

class _StartChatState extends State<StartChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BoomMenu(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 25.0),
        //child: Icon(Icons.add),
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),

        overlayColor: Colors.black,
        overlayOpacity: 0.7,
        children: [
          MenuItem(
            child: Icon(Icons.ac_unit, color: Colors.black),
            title: "Profiles",
            titleColor: Colors.black,
            subtitle: "You Can View the Noel Profile",
            subTitleColor: Colors.black,
            backgroundColor: Colors.white,
            onTap: () => print('FOURTH CHILD'),
          )
        ],
      ),
    );
  }
}
