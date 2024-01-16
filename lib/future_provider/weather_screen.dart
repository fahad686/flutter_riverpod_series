import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/future_provider/dummy_weather_repot.dart';

//globlay declare future provider
//.autoDispose user for remove cachingd data
// final weatherProvider =
//     FutureProvider.autoDispose<String>((ref) => fetchWeatherReport());
final weatherProvider = FutureProvider<String>((ref) => fetchWeatherReport());

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("weather Screen"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ref.watch(weatherProvider).when(
            data: (data) {
              return Center(
                child: Text(
                  data,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: AlertDialog(
                  title: Text(
                    "Its Reture an error",
                    selectionColor: Colors.white,
                  ),
                ),
              );
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
          )
        ],
      ),
    );
  }
}
