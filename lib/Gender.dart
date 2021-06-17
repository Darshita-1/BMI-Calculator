import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constant.dart';

class Gender extends StatelessWidget {
  Gender({@required this.i, @required this.g});
  final FaIcon i;
  final String g;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            print('Pressed');
          },
          disabledColor: Colors.white,
          icon: i,
          iconSize: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          g,
          style: labelstyle,
        ),
      ],
    );
  }
}
