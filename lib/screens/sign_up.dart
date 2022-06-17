import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/utils/util_helper.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Choose Username",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  "You can always change it later",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                height: 50,
                child: TextFormField(
                  cursorHeight: 20,
                  cursorColor: Colors.black,
                  cursorWidth: 0.4,
                  controller: userInput,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    enabled: true,
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    hintText: "Phone number,email or username",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 18,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                    onPressed: () {
                      goToNewPage(context, Home());
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
