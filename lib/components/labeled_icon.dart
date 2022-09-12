import 'package:flutter/material.dart';
import '../constants.dart';

class LabeledIcon extends StatelessWidget {
  const LabeledIcon({Key? key, this.label = '', this.icon, this.iconColor, this.labelColor})
      : super(key: key);

  final String label;
  final IconData? icon;
  final Color? iconColor;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconColor,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: labelColor,
          ),
        ),
      ],
    );
  }
}
