import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ChatPage() => Scaffold(
      appBar: AppBar(
        title: TextButton(
            child: Row(
              children: [
                Text("rutvik.dholiya_98"),
                Icon(Icons.arrow_drop_down),
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
              ],
            ),
            onPressed: () {}),
        backgroundColor: Colors.white,
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
