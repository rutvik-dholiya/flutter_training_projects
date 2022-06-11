import 'package:flutter/material.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/utils/util_helper.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              icon: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  goToNewPage(context, SearchPage());
                },
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
            Container(
              margin: EdgeInsets.only(left: 18, right: 18, bottom: 10, top: 10),
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: () {
                  goToNewPage(context, Search());
                },
                child: Row(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 23.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
                    ImageRowWidget(),
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


Widget ImageRowWidget() {
  return Column(
    children: [
      Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 2),
              child: Image.network(
                  "https://pixlok.com/wp-content/uploads/2021/01/CSK_Logo_with_satin_flag.jpg"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 1, left: 1),
              child: Image.network(
                  "https://pixlok.com/wp-content/uploads/2021/01/CSK_Logo_with_satin_flag.jpg"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 2),
              child: Image.network(
                  "https://pixlok.com/wp-content/uploads/2021/01/CSK_Logo_with_satin_flag.jpg"),
            ),
          ),
        ],
      ),
      const SizedBox(height: 3)
    ],
  );
}
