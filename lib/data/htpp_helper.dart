import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  // https:///?q=london&appid=
  final String authority = "api.openweathermap.org";
  final String path = "data/2.5/weather";
  final String apiKey = "3cd1164d517a8136ed3a558b8e6e2b34";

  Future<String> getWeather(String location) async {
    Map<String, dynamic> parameters = {"q": location, "appId": apiKey};
    Uri uri = Uri.http(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    return result.body;
  }
}
