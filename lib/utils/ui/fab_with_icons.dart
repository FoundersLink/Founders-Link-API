import 'package:flutter/material.dart';

class FabWithIcons extends StatefulWidget {
  FabWithIcons({this.icons, this.onIconTapped});
  final List<IconData> icons;
  ValueChanged<int> onIconTapped;
  @override
  State createState() => FabWithIconsState();
}

class FabWithIconsState extends State<FabWithIcons>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.icons.length, (int index) {
          return _buildChild(index);
        }));
  }

  Widget _buildChild(int index) {
    return Container(
      height: 70.0,
      width: 56.0,
      alignment: FractionalOffset.topCenter,
      child: ScaleTransition(
        scale: CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 1.0 - index / widget.icons.length / 2.0,
              curve: Curves.easeOut),
        ),
      ),
    );
  }
}
