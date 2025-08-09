import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final BuildContext parentContext;
  const BottomNavBar({super.key, required this.parentContext});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(parentContext, '/', (route) => false);
            },
            tooltip: 'Home',
          ),
          IconButton(
            icon: const Icon(Icons.info, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(parentContext, '/about-us');
            },
            tooltip: 'About Us',
          ),
          // Add more buttons if needed here
        ],
      ),
    );
  }
}
