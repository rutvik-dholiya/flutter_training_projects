import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/utils/util_helper.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  final bool _isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "English (India)",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Center(
                child: Container(
                  height: 60,
                  child: Image.asset("assets/images/title.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextFormField(
                  cursorHeight: 20,
                  cursorColor: Colors.black,
                  cursorWidth: 0.5,
                  controller: userInput,
                  obscureText: _isObsecureText,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade50,
                    hintText: "Password",
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Container(
                        child: Icon(
                          _isObsecureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey.shade500,
                          size: 23,
                        ),
                      ),
                    ),
                    suffixIconColor: Colors.grey.shade400,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5, right: 30, left: 30),
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
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15, bottom: 15),
                child: Text.rich(
                  TextSpan(
                    text: "Forgot your login details?",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                    children: [
                      TextSpan(
                        text: " Get help logging in.",
                        style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.3,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Text(
                        "   OR    ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1.3,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      goToNewPage(context, Home());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.facebook,
                              color: Colors.white, size: 30),
                        ),
                        Container(
                          child: Text(
                            " Continue as Rutvik Dholiya",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  height: double.infinity,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey.shade300,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 15, bottom: 1),
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 13,
                    ),
                    children: [
                      TextSpan(
                        text: " Sign up.",
                        style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
