import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/change_notifier_provider/our_change_notifier_provider.dart';

class WowwChangeNotifierScreen extends ConsumerWidget {
  const WowwChangeNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("change notifier screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserScreen(),
              ),
            );
          },
          child: Text(
            "ChangeNotifier Provider",
            style: TextStyle(backgroundColor: Colors.blue, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
