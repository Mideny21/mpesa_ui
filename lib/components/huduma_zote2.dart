import 'package:flutter/material.dart';

import '../data/gundua.dart';

class GHudumaZotePanel2 extends StatelessWidget {
  const GHudumaZotePanel2({super.key});

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
      itemCount: hudumaZote2.length,
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
                        image: ExactAssetImage(hudumaZote2[index]['secondary']),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(height: 5),
              const Text(
                "M-Pawa",
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
