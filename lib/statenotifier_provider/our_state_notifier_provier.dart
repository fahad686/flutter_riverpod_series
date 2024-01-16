import 'package:flutter/material.dart';
import 'package:flutter_riverpod_series/statenotifier_provider/counter_screen.dart';

class WowwStateNotifierProvider extends StatelessWidget {
  const WowwStateNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State Notifier Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CounterNotifierProviderScreen(),
                    ),
                  );
                },
                child: Text("State Notifier Provider")),
          )
        ],
      ),
    );
  }
}
