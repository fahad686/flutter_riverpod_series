import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/statenotifier_provider/counter_notifier_screen.dart';

class CounterNotifierProviderScreen extends ConsumerWidget {
  const CounterNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("counterScreen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterStateNotifierProvider.notifier).increment();
        },
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}
