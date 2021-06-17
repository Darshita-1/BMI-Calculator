import 'package:flutter/material.dart';
import 'Constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.Display, @required this.onpressed});
  final String Display;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: Color(0xFFEB1555),
        height: 80,
        width: double.infinity,
        child: Center(
          child: Text(
            Display,
            style: calstyle,
          ),
        ),
      ),
    );
  }
}
