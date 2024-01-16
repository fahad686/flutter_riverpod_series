import 'package:flutter/material.dart';
import 'package:flutter_riverpod_series/stream_provider/our_stream_provider.dart';

class WowwStreamProvider extends StatelessWidget {
  const WowwStreamProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OurStreamProvider(),
              ),
            );
          },
          child: Text(
            "Stream Provider",
            style: TextStyle(backgroundColor: Colors.grey[400], fontSize: 30),
          ),
        ),
      ),
    );
  }
}
