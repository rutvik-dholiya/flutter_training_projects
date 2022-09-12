import 'package:geolocator/geolocator.dart';

class Location {
  double lat = 0.0;
  double long = 0.0;

  Future<void> getData() async {
    Position pos = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );

    lat = pos.latitude;
    long = pos.longitude;
  }
}
