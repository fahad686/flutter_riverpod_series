import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//gloabaly declare StateProvider
final counterStateProvider = StateProvider<int>((ref) => 0);

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  //add WidgetRef ref
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("mfajkfjkadsfj")),
      //consumer state will update when we want to change
      body: Consumer(
        builder: (context, ref, child) {
          int count = ref.watch(counterStateProvider);
          return Center(
            child: Text(
              count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //get state and change
          ref.read(counterStateProvider.state).state++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
