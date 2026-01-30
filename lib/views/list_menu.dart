import 'package:flutter/material.dart';

class ListMenu {
  final String title;
  final String subtitle;
  final IconData icon;

  ListMenu({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

List<ListMenu> menus = [
  ListMenu(title: "MENU-1", subtitle: "SUB-1", icon: Icons.person),
  ListMenu(title: "MENU-2", subtitle: "SUB-2", icon: Icons.person_add),
  ListMenu(title: "MENU-3", subtitle: "SUB-3", icon: Icons.wifi),
  ListMenu(title: "MENU-4", subtitle: "SUB-4", icon: Icons.build),
  ListMenu(title: "MENU-5", subtitle: "SUB-5", icon: Icons.build),
  ListMenu(title: "MENU-6", subtitle: "SUB-6", icon: Icons.build),
  ListMenu(title: "MENU-7", subtitle: "SUB-7", icon: Icons.build),
  ListMenu(title: "MENU-8", subtitle: "SUB-8", icon: Icons.build),
  ListMenu(title: "MENU-9", subtitle: "SUB-9", icon: Icons.build),
  ListMenu(title: "MENU-10", subtitle: "SUB-10", icon: Icons.build),
  ListMenu(title: "MENU-11", subtitle: "SUB-11", icon: Icons.build),
  ListMenu(title: "MENU-12", subtitle: "SUB-12", icon: Icons.build),
];

class ListviewMenu extends StatelessWidget {
  const ListviewMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Menu")),
      body: ListView.separated(
        itemCount: menus.length,
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.purple);
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menus[index].title),
            subtitle: Text(menus[index].subtitle),
            leading: CircleAvatar(
              child: Icon(menus[index].icon),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                debugPrint(menus[index].subtitle);
              },
            ),
            onTap: () {
              debugPrint(menus[index].title);
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
          );
        },
      ),
    );
  }
}
