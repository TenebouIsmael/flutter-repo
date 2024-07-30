import 'package:flutter/material.dart';

class User {
  final String Email;
  final String Name;

  User({required this.Email, required this.Name});

  get fullName => null;

  get email => null;
}

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => null;

  User? get() {
    return _user;
  }

  void SetUser(User user) {
    _user = user;
    notifyListeners();
  }
}
