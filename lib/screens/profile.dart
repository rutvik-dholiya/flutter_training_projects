import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                    imageRowWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget imageRowWidget() => Column(
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
