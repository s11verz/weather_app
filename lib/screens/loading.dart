// ignore_for_file: prefer_const_constructors
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:weather_app/data/my_location.dart';
import 'package:weather_app/data/network.dart';

class Loading extends StatefulWidget {


  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double latitude3;
  double longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();

  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    debugPrint(latitude3.toString());
    debugPrint(longitude3.toString());

    Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');

    var weatherData = network.getJsonData();
    debugPrint(weatherData.toString());
  }

  // void fetchData() async {
  //
  //     var myJson = parsingData['weather'][0]['description'];
  //     debugPrint(myJson);
  //
  //     var wind = parsingData['wind']['speed'];
  //     debugPrint(wind);
  //
  //     var id = parsingData['id'];
  //     debugPrint(id);
  //   }else{
  //     debugPrint(response.statusCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: null,
          child: Text(
            'Get my location',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
