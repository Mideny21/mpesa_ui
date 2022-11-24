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
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _selectedIndex == 0
                          ? AppColors.primaryColor
                          : Colors.transparent,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(Icons.home_outlined),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _selectedIndex == 1
                          ? AppColors.primaryColor
                          : Colors.transparent,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(Icons.trending_up_rounded),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  width: bottomBarWidth,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: _selectedIndex == 2
                            ? AppColors.primaryColor
                            : Colors.transparent,
                        width: bottomBarBorderWidth,
                      ),
                    ),
                  ),
                  child: const Icon(Icons.add)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: _selectedIndex == 3
                          ? AppColors.primaryColor
                          : Colors.transparent,
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(Icons.person_outline_outlined),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          iconSize: 28,
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          backgroundColor: Colors.grey[200],
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
