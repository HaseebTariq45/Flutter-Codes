// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class HomeScreen extends StatelessWidget {
  final AuthService authService;

  HomeScreen({required this.authService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // New Gradient Background (purple and orange)
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent, Colors.orangeAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, ${authService.currentUser?.username}!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              // Admin Feature Button (Orange)
              if (authService.hasAccess('admin'))
                ElevatedButton(
                  onPressed: () {
                    // Admin-specific functionality
                    print('Admin functionality accessed!');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor:
                        Colors.deepOrange, // New color for admin button
                  ),
                  child: Text(
                    'Admin Feature',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              SizedBox(height: 20),
              // Logout Button (Deep Orange)
              ElevatedButton(
                onPressed: () {
                  authService.logout();
                  Navigator.pop(context); // Return to login after logout
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor:
                      Colors.deepOrangeAccent, // New color for logout button
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
