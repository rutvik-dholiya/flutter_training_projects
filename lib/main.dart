import 'package:flutter/material.dart';
import 'package:opal_white/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Opal White",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
