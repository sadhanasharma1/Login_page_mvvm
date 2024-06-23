import 'package:flutter/material.dart';
import 'package:mvvm_flutter/models/user.dart';
import 'package:mvvm_flutter/services/auth_services.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();

  Future<bool> login(String username, String password) async {
    User user = User(username: username, password: password);
    bool success = await _authService.login(user);
    notifyListeners(); // Notify listeners after login attempt
    return success;
  }
}
