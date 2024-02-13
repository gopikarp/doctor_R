import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
      
              backgroundColor: const Color.fromARGB(255, 3, 97, 174),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              currentIndex: newIndex,
              onTap: (Index) => indexchangenotifier.value = Index,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications_none),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.heart_broken), label: 'Heart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined), label: 'Profile'),
              ]);
        });
  }
}
