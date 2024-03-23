import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class OpenWeatherAPI {
  static const openWeatherAPIKey = 'e4df0ea6eaba4a27829144650241803';

  static Future getWeather(city) async {
    var url = Uri.http(
        'api.weatherapi.com',
        'v1/forecast.json',
        {"units": "metric", "key": openWeatherAPIKey, 'q': city, 'days': 5}
            .map((key, value) => MapEntry(key, value.toString())));
    final http.Response response = await http.get(url);
    print(response.body);
    return jsonDecode(response.body);
  }

  static Future<String> getLocation() async {
    Position position = await getCurrentPosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    return place.locality!;
  }

  static Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
  }
}
