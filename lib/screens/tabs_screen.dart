import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/favorites_screens.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {"page": CategoriesScreen(), "title": "Categories"},
    {"page": FavoritesMealsScreen(), "title": "Favorites"}
  ];
  int _selectedPageIndex = 0;
  Void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedPageIndex]["title"]),
        ),
        body: _pages[_selectedPageIndex]["page"],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          backgroundColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              label: 'Favorites',
            ),
          ],
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
        ));
  }
}
