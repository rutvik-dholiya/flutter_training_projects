import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bittick/coin_data.dart';
import 'dart:io' show Platform;

final int selectedCurrencyIndex = currenciesList.length - 12;

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  CoinData coinData = CoinData();
  String? selectedCurrency = currenciesList.elementAt(selectedCurrencyIndex);
  List<int> coinRates = [
    0,
    0,
    0,
  ];

  Widget androidDropDownMenu() {
    List<DropdownMenuItem<String>> dropDownMenuItems = [];

    for (String currency in currenciesList) {
      dropDownMenuItems.add(
        DropdownMenuItem(
          child: Text(
            currency,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          value: currency,
        ),
      );
    }
    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropDownMenuItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
        getData();
      },
    );
  }

  Widget iOSPicker() {
    List<Widget> pickerItems = [];

    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      scrollController: FixedExtentScrollController(
        initialItem: currenciesList.length - 12,
      ),
      onSelectedItemChanged: (index) async {
        setState(() {
          selectedCurrency = currenciesList[index];
        });
        getData();
      },
      children: pickerItems,
    );
  }

  List<Widget> CryptoCards() {
    List<Widget> t = [];

    for (int i = 0; i < cryptoList.length; i++) {
      t.add(
        Padding(
          padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
          child: Card(
            color: Colors.lightBlueAccent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
              child: Text(
                '1 ${cryptoList[i]} = ${coinRates[i]} $selectedCurrency',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      );
    }
    return t;
  }

  void getData() async {
    double rate = 0;

    for (int i = 0; i < cryptoList.length; i++) {
      try {
        rate = await coinData.getCoinRate(
          selectedCurrency,
          cryptoList[i],
        );
        setState(() {
          coinRates[i] = rate.toInt();
        });
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: CryptoCards(),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iOSPicker() : androidDropDownMenu(),
          ),
        ],
      ),
    );
  }
}
