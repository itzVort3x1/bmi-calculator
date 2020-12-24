import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //@require can be used to require any field while specifying the method in the file.
  //this is a constructor... constrouctors have the same name as the class.
  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  // this is a property.
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
