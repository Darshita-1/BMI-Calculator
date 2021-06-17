import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  Roundbutton({@required this.i, @required this.f});
  final IconData i;
  final Function f;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: f,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      child: Icon(
        i,
        color: Colors.white,
      ),
    );
  }
}
