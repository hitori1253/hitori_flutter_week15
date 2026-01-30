import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Hello Column'),
        ],
      ),
    );
  }
}
