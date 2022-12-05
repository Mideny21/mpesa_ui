import 'package:flutter/material.dart';
import 'package:mpesa_ui/utils/colors.dart';

import 'ongeza_salio.dart';

class MudaWaMaongeziScreen extends StatefulWidget {
  const MudaWaMaongeziScreen({super.key});

  @override
  State<MudaWaMaongeziScreen> createState() => _MudaWaMaongeziScreenState();
}

class _MudaWaMaongeziScreenState extends State<MudaWaMaongeziScreen> {
  TabBar get _tabBar => TabBar(
        tabs: [
          Tab(
            text: "Ongeza salio mara moja",
          ),
          Tab(
            text: "Bando",
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          title: const Text("Muda wa maongezi"),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(color: Colors.white, child: _tabBar),
          ),
        ),
        body: const TabBarView(
          children: [
            OngezaSalioScreen(),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
