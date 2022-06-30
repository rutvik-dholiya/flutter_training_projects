import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/screens/search_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  child: GestureDetector(
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
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        bottom: 20,
                      ),
                      child: Row(
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
                ),
                SizedBox(width: 90),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0),
                        child: Text(
                          "Rutvik Dholiya",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "191",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "189",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
              child: Text(
                "SOMEBODY COMMONER",
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 9,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 0.0, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(
                          color: Colors.grey.shade400,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Center(
                          child: Icon(Icons.add, size: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25, bottom: 10),
              child: StoryHighlights(),
            ),
            PageItem(),
          ],
        ),
      ),
    );
  }
}

class PageItem extends StatefulWidget {
  const PageItem({Key? key}) : super(key: key);

  @override
  State<PageItem> createState() => _PageItemState();
}

class _PageItemState extends State<PageItem> {
  int? index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.grid_on_outlined,
                    size: 30,
                    color: index == 0 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.contacts_outlined,
                    size: 30,
                    color: index == 1 ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          child: (index == 0) ? Page1() : Page2(),
        ),
      ],
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageRowWidget(),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ImageRowWidget(),
            ImageRowWidget(),
          ],
        ),
      ),
    );
  }
}

class StoryHighlights extends StatefulWidget {
  const StoryHighlights({Key? key, bool? show}) : super(key: key);

  @override
  State<StoryHighlights> createState() => _StoryHighlightsState();
}

class _StoryHighlightsState extends State<StoryHighlights> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _show = !_show;
        });
      },
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  child: Text(
                    "Story Highlights",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                  _show ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  size: 16,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Visibility(
                  visible: _show,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
