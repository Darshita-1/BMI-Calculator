import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({@required this.colour, this.childwidget, this.onpress});
  final Color colour;
  final Widget childwidget;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: childwidget,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
