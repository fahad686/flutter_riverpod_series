import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// create an ChangeNotifier Provider
final userProvider = ChangeNotifierProvider<User>((ref) {
  return User();
});

class User extends ChangeNotifier {
  String userName = "Fahad";

  void changeUserName() {
    userName = "Coding with fahad";
    //when click on button it notify the listener for changing
    notifyListeners();
  }
}
