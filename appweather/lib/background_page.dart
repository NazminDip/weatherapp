import 'package:flutter/material.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({Key? key}) : super(key: key);

  @override
  State<BackgroundPage> createState() => _BackgroundPageState();
}

class _BackgroundPageState extends State<BackgroundPage> {
  int degrees = 45;
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.pink,
              Colors.purpleAccent,
              Colors.deepPurpleAccent
            ],
            //stops: [0.1, 0.5, 0.2, 0.3],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
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
      ),
    );
  }

  void changeWeather() {
    setState(() {
      degrees = -10;
      backgroundColor = Colors.black;
    });
  }
}
