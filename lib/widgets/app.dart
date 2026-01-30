import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('pochi'),
            accountEmail: Text('pochi@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('ListView'),
            onTap: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
          ListTile(
            leading: const Icon(Icons.grid_view),
            title: const Text('GridView'),
            onTap: () {
              Navigator.pushNamed(context, '/grid');
            },
          ),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Card'),
            onTap: () {
              Navigator.pushNamed(context, '/card');
            },
          ),
        ],
      ),
    );
  }
}
