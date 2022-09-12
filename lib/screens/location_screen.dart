import 'package:flutter/material.dart';
import 'package:clima/screens/city_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({Key? key, this.weather}) : super(key: key);

  dynamic weather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int temperature = 30;
  String weatherIcon = '';
  String msg = '';
  String city = 'Surat';

  @override
  void initState() {
    super.initState();
    UpdateUI(widget.weather);
  }

  void UpdateUI(dynamic weather) {
    if (weather == null) {
      temperature = 0;
      weatherIcon = '';
      msg = 'Unable to get location';
      city = '';
      return;
    }
    WeatherModel weatherModel = WeatherModel();
    setState(() {
      double temp = weather['main']['temp'];
      temperature = temp.toInt();
      weatherIcon = weatherModel.getWeatherIcon(weather['weather'][0]['id']);
      msg = weatherModel.getMessage(temperature);
      city = weather['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.all(0.0),
                    iconSize: 70.0,
                    onPressed: () async {
                      UpdateUI(await WeatherModel().getWeatherData());
                    },
                    icon: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0.0),
                    iconSize: 70.0,
                    onPressed: () async {
                      city = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return CityScreen();
                        }),
                      );
                      if (city != null) {
                        UpdateUI(
                          await WeatherModel().getCityWeather(city),
                        );
                      }
                    },
                    icon: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "$msg in $city!",
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
