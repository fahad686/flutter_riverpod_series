import 'package:flutter_riverpod/flutter_riverpod.dart';

// declare global stream provider
final numberStreamProvider = StreamProvider(
  (ref) => fetchNumber(),
);
Stream<String> fetchNumber() {
  return Stream<String>.periodic(
    const Duration(seconds: 5),
    (number) => "number $number",
  ).take(10);
}
