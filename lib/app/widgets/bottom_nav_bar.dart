import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class BottomNavBar extends StatelessWidget {
  final int indexButtonSelected;
  final void Function(int index) onTap;

  const BottomNavBar(
      {super.key, required this.indexButtonSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: naranja,
      selectedItemColor: negro,
      unselectedItemColor: amarillo,
      showSelectedLabels: true,
      currentIndex: indexButtonSelected,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Art Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.slow_motion_video),
          label: 'Inspiration',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie_creation_outlined),
          label: 'Interactive Stories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Models',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: 'Settings',
        ),
      ],
    );
  }
}
