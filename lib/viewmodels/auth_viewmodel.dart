import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/auth_services.dart';

class AuthViewModel with ChangeNotifier {
  final AuthService _authService = AuthService();

  bool signup(String username, String password) {
    final user = User(username: username, password: password);
    final success = _authService.signup(user);
    notifyListeners();
    return success;
  }

  bool login(String username, String password) {
    final user = User(username: username, password: password);
    final success = _authService.login(user);
    notifyListeners();
    return success;
  }

  void logout() {
    _authService.logout();
    notifyListeners();
  }

  List<User> get registeredUsers => _authService.registeredUsers;
}
