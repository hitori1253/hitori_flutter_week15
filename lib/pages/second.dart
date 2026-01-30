import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final name =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Text(
          'ทำไรอ่ะ $name',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
