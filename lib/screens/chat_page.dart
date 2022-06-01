import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 7),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 15, right: 0),
                          child: TextButton(
                            child: Text(
                              "rutvik.dholiya_98",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.movie_outlined,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[600],
                          size: 20,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                  OnlineProfileWidget(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
                bottom: 3,
                right: 15,
              ),
              child: Row(
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Requests(0)",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                      ChatItemWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnlineProfileWidget extends StatelessWidget {
  const OnlineProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/profile.jpg"),
            ),
          ),
        ),
        Container(
          width: 70,
          margin: EdgeInsets.only(left: 8),
          child: Center(
            child: Text(
              "Rutvik Dholiya",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

class ChatItemWidget extends StatelessWidget {
  const ChatItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 17),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      child: Text(
                        "Rutvik Dholiya",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 15),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Active 5h ago",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 13),
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
