import 'package:flutter/material.dart';

import '../data/gundua.dart';

class GHudumaZotePanel4 extends StatelessWidget {
  const GHudumaZotePanel4({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          mainAxisExtent: 110,
          crossAxisCount: (orientation == Orientation.portrait) ? 3 : 3),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: matumizi.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 65,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: ExactAssetImage(matumizi[index]['secondary']),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 5),
              Text(
                matumizi[index]['name'],
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                    fontSize: 16),
              )
            ],
          ),
        );
      }),
    );
  }
}
