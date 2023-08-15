// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String buttonText = 'Click Me';
int currentIndex = 0;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HEIN Acadêmia",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade700,
          title: const Text("HEIN Acadêmia"),
        ),
        body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade700,
              ),
              onPressed: () {
                setState(() {
                  if (buttonText == 'You have clicked me!') {
                    buttonText = 'Click Me';
                  } else {
                    buttonText = 'You have clicked me!';
                  }
                });
              },
              child: Text(buttonText)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
                label: 'Favorites', icon: Icon(Icons.favorite)),
          ],
          fixedColor: Colors.white,
          backgroundColor: Colors.orange.shade700,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
