import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ListTile(
                onTap: () {
                  showMaterialModalBottomSheet(
                    context: context,

                    builder: (context) => Container(
                      child: ListView(
                        children: [
                          BottomSheetElement(),
                          BottomSheetElement(),
                          BottomSheetElement(),
                          BottomSheetElement(),
                        ],
                      ),
                    ),
                  );
                },
                title: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 4),
                      child: Text(
                        "rutvik.dhliya_98",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget BottomSheetElement() {
  return Row(
    children: [
      Container(
        child: CircleAvatar(
          radius: 30,
          foregroundImage: AssetImage("assets/images/profile.jpg"),
        ),
        padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
      ),
      Text(
        "rutvik.dholiya_98",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
