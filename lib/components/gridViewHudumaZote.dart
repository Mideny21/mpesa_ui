import 'package:flutter/material.dart';

import '../data/gundua.dart';

class GHudumaZotePanel extends StatelessWidget {
  const GHudumaZotePanel({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          mainAxisExtent: 100,
          crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: hudumaZote1.length,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: ExactAssetImage(hudumaZote1[index]['secondary']),
                  fit: BoxFit.fill,
                )),
          ),
        );
      }),
    );
  }
}
