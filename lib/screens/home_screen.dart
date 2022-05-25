import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/utils/util_helper.dart';
import 'ChatPage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: Image.asset(
            "assets/images/title.png",
            height: 45,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(1),
            ),
            child: IconButton(
              icon: Icon(Icons.add_box_outlined),
              color: Colors.black,
              iconSize: 27,
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 11, left: 5.5),
            child: IconButton(
              onPressed: () {
                goToNewPage(context, ChatPage());
              },
              icon: Image(
                height: 25,
                width: 25,
                image: AssetImage("assets/images/messenger.png"),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
            label: "",
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                profileImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
                storyImageWidget(),
              ],
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 0.5,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget profileImageWidget() => Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/images/profile.jpg"),
              ),
            ),
          ),
          height: 72,
          width: 72,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 6, bottom: 6),
          child: Text(
            "Your Story",
            style: TextStyle(fontSize: 11),
          ),
        ),
      ],
    );

Widget storyImageWidget() => Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 6.5, right: 6.5),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.finetoshine.com/wp-content/uploads/2020/09/Anushka-Sens-Instagram-profile-post-Oh-darlin-Put-your-hand.jpg"),
              ),
            ),
          ),
          height: 75.5,
          width: 75.5,
          padding: EdgeInsets.all(3.3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.deepOrange,
              width: 2,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 6, bottom: 6),
          child: Text(
            "Story 1",
            style: TextStyle(fontSize: 11),
          ),
        )
      ],
    );

Widget postWidget() => Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 7.5, left: 7.5, top: 7, bottom: 7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.deepOrange),
              ),
              child: Container(
                margin: EdgeInsets.all(1.5),
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.fitWidth,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 1),
                  width: 200,
                  child: Text(
                    "rutvik.dholiya_98",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  child: Text(
                    "V Company Studios",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  iconSize: 22,
                  color: Colors.black54,
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 490,
          width: 490,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage("assets/images/profile.jpg"),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border_outlined),
                iconSize: 28,
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.messenger_outline),
                iconSize: 27,
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
                iconSize: 27,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_border),
                  iconSize: 27,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 12.5, bottom: 2),
              width: 500,
              child: Text(
                "41,233 likes",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              width: 500,
              padding: EdgeInsets.only(left: 12.5, bottom: 5),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "rutvik.dholiya_98 ",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Passion at it's peak. It's just me with me only. Alone but not only one.",
                      style: TextStyle(height: 1.35),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 500,
              padding: EdgeInsets.only(left: 12.5, bottom: 15),
              child: Text(
                "View all 74 comments",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ],
    );
