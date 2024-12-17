import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('namer3'),
          backgroundColor: const Color.fromARGB(255, 46, 44, 44),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('A random AWESOM idea:'),
              Container(
                height: 120,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: const Color.fromARGB(255, 144, 83, 66),
                ),
                child: Center(
                  child: Text(
                    'lightstream',
                    style: TextStyle(
                        fontSize: 62,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 130, 57, 37)),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('Button Pressed!');
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add)),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.brown,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Tooltip(message: 'Home', child: Icon(Icons.home)),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Tooltip(message: 'Sports', child: Icon(Icons.sports)),
                label: 'Sports'),
            BottomNavigationBarItem(
                icon: Tooltip(
                    message: 'Cricket', child: Icon(Icons.sports_cricket)),
                label: 'Cricket'),
            BottomNavigationBarItem(
                icon: Tooltip(message: 'Messages', child: Icon(Icons.message)),
                label: 'Messages'),
          ],
        ),
      ),
    );
  }
}
