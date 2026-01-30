import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView')),
      drawer: const AppDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          6,
          (index) => Card(
            child: Center(child: Text('Grid $index')),
          ),
        ),
      ),
    );
  }
}
