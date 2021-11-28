import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

import 'background_page.dart';

class Changeweather extends StatefulWidget {
  const Changeweather({Key? key}) : super(key: key);

  @override
  State<Changeweather> createState() => _ChangeweatherState();
}

class _ChangeweatherState extends State<Changeweather> {
  int degrees = 45;
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Image.network(
              'https://thumbs.gfycat.com/FeistyThriftyCurlew-size_restricted.gif'
              //'https://i0.wp.com/codemyui.com/wp-content/uploads/2017/07/cartoony-weather-animation.gif?fit=880%2C440&ssl=1'
              ),
          const SizedBox(height: 10),
          Text(
            "$degrees 0C",
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
          TextButton(
            onPressed: changeWeather,
            child: const Text("Change Weather",
                style: TextStyle(fontSize: 20, color: Colors.yellow)),
          ),
        ],
      ),
    );
  }

  void changeWeather() {
    final Counter = Random().nextInt(2);
    setState(() {
      switch (Counter) {
        case 0:
          degrees = nextNumber(min: -20, max: 0);
          backgroundColor = Colors.black;
          break;
        case 1:
          degrees = nextNumber(min: 30, max: 45);
          backgroundColor = Colors.blueGrey;
          break;
      }
    });
  }

  int nextNumber({required int min, required int max}) =>
      min + Random().nextInt(max - min + 1);
}
