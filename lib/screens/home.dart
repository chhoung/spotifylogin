import 'package:flutter/material.dart';
import 'package:spotifylogin/screens/library.dart';
import 'package:spotifylogin/screens/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _screenOptions = List<Widget>();

  @override
  void initState() {
    super.initState();
    _screenOptions.add(FlutterLogo());
    _screenOptions.add(SearchScreen());
    _screenOptions.add(LibraryScreen());
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screenOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            title: Text('Your Library'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        selectedFontSize: 15,
        unselectedFontSize: 15,
        onTap: _onItemTapped,
      ),
    );
  }
}
