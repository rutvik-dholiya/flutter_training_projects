import 'package:flutter/material.dart';
import 'package:instagram/screens/profile.dart';

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
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null) return "Search home office";
                      },
                      controller: userInput,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
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

TextEditingController userInput = TextEditingController();