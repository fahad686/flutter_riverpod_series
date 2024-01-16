import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/api_state_notifier/home_screen.dart';

//global declaring provider
// final stringProvider = Provider<String>(
//   (ref) {
//     return "Flutter with Fahad";
//   },
// );
void main(List<String> args) {
  // const ProviderScope(child: MyApp())
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      //for StateProvider
      // home: const CounterWidget(),
      //for FutureState
      home: const HomeSceen(),
    );
  }
}
