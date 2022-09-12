import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonTitle, required this.onTap}) : super(key: key);

  final String buttonTitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(kBottomColor),
        padding: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 13.0,
          bottom: 27.0,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
