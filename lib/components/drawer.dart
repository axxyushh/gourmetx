import 'package:flutter/material.dart';
import 'package:gourmetx/components/drawertile.dart';
import 'package:gourmetx/pages/settings.dart';
import 'package:gourmetx/services/auth/auth_service.dart';
import 'package:gourmetx/pages/about.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout()
  {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          //App Logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          //Home List tile
          MyDrawerTile(
              text: "H O M E",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),

          //Setting List Tile
          MyDrawerTile(
              text: "S E T T I N G S",
              icon: Icons.settings,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
              }),

          MyDrawerTile(
              text: "A B O U T",
              icon: Icons.info,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutPage()));
              }),

          Spacer(),
          //logout list Tile
          MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: logout),

          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

