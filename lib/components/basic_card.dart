import 'package:flutter/material.dart';

class BasicCard extends StatelessWidget {
  BasicCard({Key? key, this.cardColor, this.cardChild})
      : super(key: key);
  final Color? cardColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: cardColor,
      ),
    );
  }
}
