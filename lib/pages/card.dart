import 'package:flutter/material.dart';
import 'package:hitori15/widgets/app.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card')),
      drawer: const AppDrawer(),
      body: Center(
        child: Card(
          child: InkWell(
            onTap: () {},
            child: const SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text('Tap Card')),
            ),
          ),
        ),
      ),
    );
  }
}
