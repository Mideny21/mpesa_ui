import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> _pages;
  int _selectedIndex = 0;
  double bottomBarWidth = 30;
  double bottomBarBorderWidth = 3;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _pages = [
      const HomePage(),
      // const ViewCrops(),
      // const AddProduct(),
      // const AccountPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Nyumbani',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Muda wa maongezi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Hamisha pesa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Huduma',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Mipangilio',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        iconSize: 28,
        selectedFontSize: 13.0,
        unselectedFontSize: 12.0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        backgroundColor: Colors.grey[200],
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primaryColor,
        // selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedIconTheme: const IconThemeData(color: Colors.black54),
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
