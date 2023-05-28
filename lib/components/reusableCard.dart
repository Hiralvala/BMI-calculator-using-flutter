import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour,
      required this.cardChild,
      required this.onpress}); //-->this is constructor

  final Widget cardChild;
  final Color colour;
  final Function onpress;
  //ReusableCard in mutable class so it show blue line then we can use final keyword in color property to solve it

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onpress(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
