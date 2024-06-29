import 'package:flutter/material.dart';
import 'package:food_app/components/mydrawertile.dart';
import 'package:food_app/pages/settingspage.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //applogo
          Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          //home list title
          Mydrawertile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () {
                Navigator.pop(context);
              }),
          // const Spacer(),
          //settings list tittle
          Mydrawertile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settingspage()),
                );
              }),
          const Spacer(),
          //logoutlist title
          Mydrawertile(text: "L O G O U T", icon: Icons.logout, onTap: () {})
        ],
      ),
    );
  }
}
