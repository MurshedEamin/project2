import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.cyan,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Murshed Eamin"),
            accountEmail: const Text("murshedeamin@gmail.com", style: TextStyle(decoration: TextDecoration.underline)),
            currentAccountPicture: ClipOval(
              child: CircleAvatar(
                child: Image.asset("assets/images/Me.png", fit: BoxFit.cover, height: 90, width: 90),
              ),
            ),
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/8.jpg"), fit: BoxFit.cover)),
          ),
          ListTile(leading: const Icon(Icons.add), title: const Text("New contact"), onTap: () {}),
          ListTile(leading: const Icon(Icons.email), title: const Text("e-mail"), onTap: () {}),
          ListTile(leading: const Icon(Icons.comment), title: const Text("Address"), onTap: () {}),
          ListTile(leading: const Icon(Icons.accessibility), title: const Text("Accessibility"), onTap: () {}),
        ],
      ),
    );
  }
}
