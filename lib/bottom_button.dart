import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.ButtonTitle});

  final Function onTap;
  final String ButtonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(ButtonTitle, style: KLargeButtonTextStyle,)),
        margin: EdgeInsets.all(10.0),
        width: 400.0,
        height: 60.0,
        decoration: BoxDecoration(
            color: Color(0xFFEB1555),
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}