import 'package:flutter/material.dart';
import 'package:myapp/src/views/pages/discover_page.dart';
import 'package:myapp/src/views/pages/home_page.dart';
import 'package:myapp/src/views/pages/library_page.dart';
import 'package:myapp/src/views/pages/more_page.dart';
import 'package:myapp/src/views/pages/nearby_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme:
 ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    LibraryPage(),
    NearbyPage(),
    DiscoverPage(),
    MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'Library',
            activeIcon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_outlined),
            label: 'Nearby',
            activeIcon: Icon(Icons.near_me),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Discover',
            activeIcon: Icon(Icons.explore),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
            activeIcon: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}