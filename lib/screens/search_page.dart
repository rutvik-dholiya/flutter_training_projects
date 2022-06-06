import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SearchCollection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget SearchCollection() {
  return Row(
    children: [
      Column(
        children: [
          Expanded(
            child: SearchImage(),
            flex: 1,
          ),
          Expanded(
            child: SearchImage(),
            flex: 1,
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: SearchImage(),
            flex: 1,
          ),
          Expanded(
            child: SearchImage(),
            flex: 1,
          ),
        ],
      ),
      Expanded(child: SearchImage(),),
    ],
  );
}

class SearchImage extends StatelessWidget {
  const SearchImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: (size.width) / 3,
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/profile.jpg"),
        ),
      ),
    );
  }
}
