import 'package:flutter_riverpod/flutter_riverpod.dart';

//creating golal StateNotifierProvider
final counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifierScreen, int>((ref) {
  return CounterStateNotifierScreen();
});

class CounterStateNotifierScreen extends StateNotifier<int> {
  CounterStateNotifierScreen() : super(0);

  //create increment function
  void increment() {
    state = state + 2;
  }
}
