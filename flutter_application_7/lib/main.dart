import 'package:flutter/material.dart';
import 'details_screen.dart';

void main() {
  runApp(const TravelPlannerApp());
}

class TravelPlannerApp extends StatelessWidget {
  const TravelPlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Planner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController destinationController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Planner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(
                labelText: 'Enter Destination',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String destination = destinationController.text;
                if (destination.isNotEmpty) {
                  // Navigate to the details screen and pass the destination
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(destination: destination),
                    ),
                  );
                }
              },
              child: const Text('View Details'),
            ),
          ],
        ),
      ),
    );
  }
}
