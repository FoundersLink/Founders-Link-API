import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;
  final Color color;
  final Color textColor;
  final EdgeInsets padding;
  final double radius;

  MyButton({
    Key key,
    @required this.onPressed,
    this.child,
    this.color = const Color(0xff000000),
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(vertical: 15, horizontal: 140),
    this.radius = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      color: color,
      textColor: textColor,
      padding: padding,
      child: child,
    );
  }
}
