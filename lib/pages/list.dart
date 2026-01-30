import 'package:flutter/material.dart';
import 'package:hitori15/widgets/app.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}
