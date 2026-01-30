import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Card Widget'),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            onTap: () {
              debugPrint('CARD-1');
            },
            child: const SizedBox(
              width: 300.0,
              height: 100.0,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    SizedBox(height: 8),
                    Text('CARD-1'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}