import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('My Card'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(12.0),
        children: List.generate(3, (index) {
          return Card(
            margin: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                debugPrint('My Card');
              },
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.home, size: 40, color: Colors.blueAccent),
                    SizedBox(height: 8),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}