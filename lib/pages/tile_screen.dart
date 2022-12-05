import 'package:flutter/material.dart';
import 'package:mpesa_ui/data/home_data.dart';

import '../utils/colors.dart';

class TileScreen extends StatefulWidget {
  const TileScreen({super.key});

  @override
  State<TileScreen> createState() => _TileScreenState();
}

class _TileScreenState extends State<TileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: const Text("Temporary tile Screen"),
      ),
      body: ListView.builder(
          itemCount: tiledata1.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading:
                  Icon(tiledata1[index]['icon'], color: AppColors.primaryColor),
              title: Text(tiledata1[index]['name']),
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: AppColors.primaryColor),
            );
          })),
    );
  }
}
