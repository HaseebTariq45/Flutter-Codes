// lib/models/user.dart
class User {
  String username;
  String password;
  String role; // e.g., 'admin' or 'user'

  User({required this.username, required this.password, required this.role});
}
