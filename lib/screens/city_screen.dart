import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  CityScreen({Key? key}) : super(key: key) {}

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                      size: 45.0,
                    ),
                    hintText: 'Enter the city name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onChanged: (value) {
                    city = value;
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, city);
                },
                child: Text(
                  'Get Weather',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
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
