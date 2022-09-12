import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class RoundIConButton extends StatelessWidget {
  const RoundIConButton({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 15.0, left: 6.0, right: 6.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(kRoundIconColor),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }
}
