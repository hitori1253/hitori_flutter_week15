import 'package:flutter/material.dart';
import 'package:hitori15/widgets/app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: const AppDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/second',
              arguments: 'pochi',
            );
          },
          child: const Text('ไปหน้า 2'),
        ),
      ),
    );
  }
}
