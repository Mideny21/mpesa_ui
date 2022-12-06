import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utils/colors.dart';

class HudumaScreen extends StatefulWidget {
  const HudumaScreen({super.key});

  @override
  State<HudumaScreen> createState() => _HudumaScreenState();
}

class _HudumaScreenState extends State<HudumaScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  TabBar get _tabBar => TabBar(
        controller: _tabController,
        isScrollable: true,
        indicatorColor: Colors.transparent,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white38)),
        tabs: [
          HudumaTabs(
              boxColor:
                  _activeIndex == 0 ? AppColors.primaryColor : Colors.white,
              textColor: _activeIndex == 0 ? Colors.white : Colors.grey,
              color: _activeIndex == 0 ? Colors.white : Colors.grey,
              icon: Icons.read_more,
              title: "Investments"),
          HudumaTabs(
              boxColor:
                  _activeIndex == 1 ? AppColors.primaryColor : Colors.white,
              textColor: _activeIndex == 1 ? Colors.white : Colors.grey,
              color: _activeIndex == 1 ? Colors.white : Colors.grey,
              icon: Icons.read_more,
              title: "Investments"),
          HudumaTabs(
              boxColor:
                  _activeIndex == 2 ? AppColors.primaryColor : Colors.white,
              textColor: _activeIndex == 2 ? Colors.white : Colors.grey,
              color: _activeIndex == 2 ? Colors.white : Colors.grey,
              icon: Icons.read_more,
              title: "Investments"),
          HudumaTabs(
              boxColor:
                  _activeIndex == 3 ? AppColors.primaryColor : Colors.white,
              textColor: _activeIndex == 3 ? Colors.white : Colors.grey,
              color: _activeIndex == 3 ? Colors.white : Colors.grey,
              icon: Icons.read_more,
              title: "Investments"),
          HudumaTabs(
              boxColor:
                  _activeIndex == 4 ? AppColors.primaryColor : Colors.white,
              textColor: _activeIndex == 4 ? Colors.white : Colors.grey,
              color: _activeIndex == 4 ? Colors.white : Colors.grey,
              icon: Icons.read_more,
              title: "Investments"),
        ],
      );
  @override
  Widget build(BuildContext context) {
    _tabController!.addListener(() {
      if (_tabController!.indexIsChanging) {
        setState(() {
          _activeIndex = _tabController!.index;
        });
      }
    });
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          title: const Text("Huduma"),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(color: Colors.white, child: _tabBar),
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}

class HudumaTabs extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final Color boxColor;
  final Color textColor;

  const HudumaTabs({
    Key? key,
    required this.title,
    required this.icon,
    required this.color,
    required this.boxColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Container(
            decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: color)),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(icon, size: 18),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: TextStyle(fontSize: 15, color: textColor),
                  ),
                ],
              ),
            )));
  }
}
