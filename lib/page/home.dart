import 'package:flutter/material.dart';
import 'row_page.dart';
import 'column_page.dart';
import 'listview_menu.dart';
import 'card_page.dart';
import 'mycard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('ฐานทัพเมเทโอรอยด์'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('pochi'),
              accountEmail: const Text('pochi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[300],
                child: ClipOval(
                  child: Image.asset(
                    'assets/puplue.jpg',
                    fit: BoxFit.cover,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Row Widget'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RowPage())),
            ),
            ListTile(
              leading: const Icon(Icons.apps),
              title: const Text('Column Widget'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ColumnPage())),
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('ListView Menu'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ListviewMenu())),
            ),
            ListTile(
              leading: const Icon(Icons.credit_score_rounded),
              title: const Text('Card and Inkwell'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CardPage())),
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('My card'),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Mycard())),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('MyApp', style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}