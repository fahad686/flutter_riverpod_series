import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomeScreen extends ConsumerWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // calling provider with read function

    // String ourData = ref.read<String>(stringProvider);
    return Scaffold(
      body: Column(children: [
        Center(
            child: Text(
          " Hello Wrold"
          // ourData,
          ,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
      ]),
    );
  }
}
