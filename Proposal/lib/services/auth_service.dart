// lib/services/auth_service.dart
import '../models/user.dart';

class AuthService {
  static List<User> _users = []; // Store all registered users
  User? _currentUser;            // Track the currently logged-in user

  // Registration function
  bool register(String username, String password, String role) {
    // Check if username is already taken
    if (_users.any((user) => user.username == username)) {
      return false; // Registration fails
    }
    _users.add(User(username: username, password: password, role: role));
    return true; // Registration successful
  }

  // Login function
  bool login(String username, String password) {
    final user = _users.firstWhere(
      (user) => user.username == username && user.password == password,
      orElse: () => User(username: '', password: '', role: ''),
    );

    if (user.username.isNotEmpty) {
      _currentUser = user;
      return true; // Login successful
    }
    return false; // Login failed
  }

  // Get the currently logged-in user
  User? get currentUser => _currentUser;

  // Check if the current user has access to certain features
  bool hasAccess(String requiredRole) {
    return _currentUser?.role == requiredRole;
  }

  // Logout function
  void logout() {
    _currentUser = null;
  }
}
