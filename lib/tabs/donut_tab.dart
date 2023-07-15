import 'package:flutter/material.dart';

import '../utilities/donut_tile.dart';

// ignore: must_be_immutable
class DonutTab extends StatelessWidget {
  //list of donuts
  List donutOnSale = [
    //[ donutFlavour, donutPrice, donutColor, imageName ]
    ['Ice Cream', '36', Colors.blue, 'images/ice_cream_donut.png'],
    ['Strawberry', '45', Colors.red, 'images/strawberry_donut.png'],
    ['Grape Ape', '84', Colors.purple, 'images/grape_donut.png'],
    ['Choco', '95', Colors.brown, 'images/chocolate_donut.png'],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          imageName: donutOnSale[index][3],
        );
      },
    );
  }
}
