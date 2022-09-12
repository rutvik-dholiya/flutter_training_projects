import 'dart:convert';
import 'package:http/http.dart' as http;

const URL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKEY = 'E3D8B886-0852-4517-9CC4-99FFB3CCD607';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  dynamic _data;

  Future<double> getCoinRate(String? Currency, String? Crypto) async {
    http.Response response = await http.get(
      Uri.parse(
          '$URL/$Crypto/$Currency/?apikey=$apiKEY'),
    );
    if(response.statusCode == 200) {
      print(response.body);
      _data = jsonDecode(response.body);
      double rate = _data['rate'];
      return rate;
    }
    else{
      print(response.statusCode);
      throw('Problem with get request');
    }
  }
}
