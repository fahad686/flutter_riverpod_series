import 'package:flutter/material.dart';
import 'package:flutter_riverpod_series/future_provider/weather_screen.dart';

class WowwFutureProvider extends StatelessWidget {
  const WowwFutureProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WeatherScreen()));
              },
              child: Text(
                "FutureProvider",
                style: TextStyle(backgroundColor: Colors.blue, fontSize: 30),
              ))),
    );
  }
}
