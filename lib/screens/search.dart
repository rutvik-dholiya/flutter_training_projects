import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, right: 15, left: 15),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.centerLeft,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        maxLines: 1,
                        cursorColor: Colors.grey,
                        cursorHeight: 25,
                        controller: userInput,
                        decoration: InputDecoration(
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 10,left: 20),
                            child: AnimatedTextKit(
                              pause: Duration(milliseconds: 500),
                              animatedTexts: [
                                RotateAnimatedText(
                                  "Search \"home decor\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"knitting\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"healing sounds\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"coffee\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"skateboard\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"nail design\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"rainbow makeup\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"japanese pancake\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"playful creations\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                                RotateAnimatedText(
                                  "Search \"oil painting\"",
                                  alignment: Alignment.centerLeft,
                                  textStyle: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextEditingController userInput = TextEditingController();
