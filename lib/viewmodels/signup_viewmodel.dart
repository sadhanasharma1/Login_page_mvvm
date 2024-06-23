import 'package:flutter/material.dart';
import 'package:mvvm_flutter/models/user.dart';
import 'package:mvvm_flutter/services/auth_services.dart';

class SignupViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();

  Future<bool> signup(String username, String password) async {
    User user = User(username: username, password: password);
    bool success = await _authService.signup(user);
    notifyListeners(); // Notify listeners after signup attempt
    return success;
  }
}

