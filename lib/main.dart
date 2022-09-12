import 'dart:ui';
import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'components/basic_card.dart';
import 'components/labeled_icon.dart';
import 'screens/result_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
      theme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFF1D1F33),
        scaffoldBackgroundColor: Color(0xFF090C22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090C22),
        ),
      ),
    );
  }
}
