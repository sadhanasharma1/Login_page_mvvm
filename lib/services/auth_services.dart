import '../models/user.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;

  AuthService._internal();

  final List<User> _registeredUsers = [];

  bool signup(User user) {
    if (_registeredUsers.any((u) => u.username == user.username)) {
      return false;
    }
    _registeredUsers.add(user);
    return true;
  }

  bool login(User user) {
    return _registeredUsers.any((u) =>
        u.username == user.username && u.password == user.password);
  }

  void logout() {
    // Add any logout logic here if necessary
  }

  List<User> get registeredUsers => _registeredUsers;
}
