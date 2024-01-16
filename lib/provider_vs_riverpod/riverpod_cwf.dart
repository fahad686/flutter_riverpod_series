import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// globaly declare string provider
final stringProvider = Provider<String>(
  (ref) => "Global Provider 1",
);

/// string  providre2
final stringProvider2 = Provider<String>(
  (ref) => "Global Provider 2",
);

class RiverpodCWF extends ConsumerWidget {
  const RiverpodCWF({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String data = ref.read<String>(stringProvider);
    String data2 = ref.read(stringProvider2);
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              data2,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
    );
  }
}
