import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/stream_provider/fetch_numbers.dart';

class OurStreamProvider extends ConsumerWidget {
  const OurStreamProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text("Stream Provider Screee")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ref.watch(numberStreamProvider).when(
          data: (data) {
            return Center(
              child: Text(
                data.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text(
                error.toString(),
              ),
            );
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        )
      ]),
    );
  }
}
