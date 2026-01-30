import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(68, 138, 255, 1),
        title: const Text('ทำอะไรดีนะ'),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('pochi'),
              accountEmail: Text('pochi@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text(
          'ส่องทำไม!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
