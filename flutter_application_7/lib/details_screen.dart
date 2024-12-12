import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen extends StatelessWidget {
  final String destination;

  const DetailsScreen({super.key, required this.destination});

  Future<void> _openMap(String destination) async {
    final Uri mapUrl =
        Uri.parse('https://www.google.com/maps/search/?q=$destination');
    if (await canLaunch(mapUrl.toString())) {
      await launch(mapUrl.toString());
    } else {
      throw 'Could not open map.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Destination Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              destination,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _openMap(destination),
              child: const Text('Open in Map'),
            ),
          ],
        ),
      ),
    );
  }
}
