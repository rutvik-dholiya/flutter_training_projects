import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: "SpeedTap",
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var col = 0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "SpeedTap",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        elevation: 0.0,
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SafeArea(
        child: CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  Timer? _timer;
  bool _reset = false;
  int _start = 15;
  int _cnt = 0;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0 || _reset) {
          setState(() {
            _timer?.cancel();
            if(_reset) _reset = false;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(35, 50, 35, 40),
          child: LinearProgressIndicator(
            color: Colors.green,
            value: ((15 - _start) / 15).toDouble(),
            backgroundColor: Colors.red,
            minHeight: 10,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 40),
          child: Text(
            _start.toString() + "s",
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
        ),
        Container(
          child: Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (_cnt == 0) {
                    _reset = false;
                    startTimer();
                    _cnt++;
                  } else if (_start != 0) _cnt++;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.orange.shade600,
                  radius: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo.shade600,
                    radius: 85,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(25),
          child: Text(
            "Score : $_cnt",
            style: TextStyle(color: Colors.white, fontSize: 55),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 7),
          child: TextButton(
            onPressed: () {
              setState(() {
                _reset = true;
                _start = 15;
                _cnt = 0;
              });
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
