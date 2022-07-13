import 'package:flutter/material.dart';
import 'package:instagram/pages/account.dart';
import 'package:instagram/pages/favorite.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigation arround the bottom nav bar
  int _selected = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selected = index;
    });
  }

  // diffrent pages to navigate to
  final List<Widget> _children = const [
    Home(),
    Search(),
    Reels(),
    Favorite(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 30), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded, size: 30),
              label: 'reels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, size: 30), label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30), label: 'account'),
        ],
      ),
    );
  }
}
