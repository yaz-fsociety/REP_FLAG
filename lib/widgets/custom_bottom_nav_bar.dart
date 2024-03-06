import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: selectedIndex == 0 ? Colors.blue : Colors.grey),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, color: selectedIndex == 1 ? Colors.blue : Colors.grey),
          label: 'Réservations',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: selectedIndex == 2 ? Colors.blue : Colors.grey),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message, color: selectedIndex == 3 ? Colors.blue : Colors.grey),
          label: 'Messages',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      selectedItemColor: Colors.blue,
    );
  }
}


