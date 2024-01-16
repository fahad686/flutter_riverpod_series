import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/change_notifier_provider/user_screen.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // user consumer for  changing
            child: Consumer(
              builder: (context, ref, child) {
                //making fucntion for changing
                var data = ref.watch(userProvider);
                return Text(
                  data.userName,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w800),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //read function where click for chanage

          ref.read(userProvider.notifier).changeUserName();
        },
        child: Icon(Icons.circle),
      ),
    );
  }
}
