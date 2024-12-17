import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var name = [
  'WBBL 2024',
  'Pakistan vs England',
  'Australia vs Pakistan',
  'Zimbabwe vs Pakistan',
  'Quaid-e-Azam Trophy',
  'President\'s Cup Grade-I (1-Day)',
  'Afghanistan v Bangladesh',
  'Pakistan A vs Sri Lanka A',
  'South Africa vs India',
  'Australia vs India',
  'Sri Lanka vs New Zealand',
  'West Indies vs England',
  'SA Women vs ENG Women',
  'IPL 2025',
  'Test Championship 2023-25',
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            children: [
              const Text(
                'Series',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: const Text(
                  'Series Home',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    name[index],
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 47, 34, 34)),
                  ),
                ),
                const Divider(
                  height: 1,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
