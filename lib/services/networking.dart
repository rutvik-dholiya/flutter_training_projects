import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  String url = '';

  NetworkHelper(this.url);

  Future<dynamic> getData() async {
    String data;
    http.Response response = await http.get(Uri.parse(url));

    data = response.body;

    if (response.statusCode == 200) {
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
