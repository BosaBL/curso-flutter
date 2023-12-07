import 'package:actividad4/pokedexcarousel.dart';
import 'package:actividad4/profile.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Navigation> {
  int _selectedIndex = 0;

  // Array of widgets, each widget has its corresponding NavItem in the _navItems list.
  static const List<Widget> _pages = <Widget>[
    PokedexCarousel(),
    Profile(),
  ];

  // Array of navigation bar items, each item has its corresponding widget in the _pages list.
  static const List<BottomNavigationBarItem> _navItems =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.image),
      label: "Pokedex",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Perfil",
    ),
  ]; // BottomNavigationBarItem Array

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _navItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
