import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBot extends StatefulWidget {
  const MyBot({super.key});

  @override
  State<MyBot> createState() => _MyBotState();
}

class _MyBotState extends State<MyBot> {
  @override
  Widget build(BuildContext context) {
    return const GNav(
      backgroundColor: Colors.black,
      color: Colors.white,
      activeColor: Colors.white70,
      tabBackgroundColor: Colors.grey,
      gap: 8,
      padding: EdgeInsets.all(16),
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.favorite_border,
          text: 'Likes',
        ),
        GButton(
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.settings,
          text: 'Settings',
        ),
      ],
    );
  }
}
