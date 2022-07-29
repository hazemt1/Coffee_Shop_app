import 'package:coffee/Screens/Home/Widgets/GridItem.dart';
import 'package:coffee/models/Product.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  Grid({Key? key}) : super(key: key);
  List items = [
    Product(
      name: 'Coffee',
      address: 'New Cairo, Egypt',
      imagePath: 'assets/images/image1.png',
      rating: 4.4,
      reviews: 429,
    ),Product(
      name: 'Coffee',
      address: 'New Cairo, Egypt',
      imagePath: 'assets/images/image2.png',
      rating: 4.4,
      reviews: 429,
    ),Product(
      name: 'Coffee',
      address: 'New Cairo, Egypt',
      imagePath: 'assets/images/image3.png',
      rating: 4.4,
      reviews: 429,
    ),Product(
      name: 'Coffee',
      address: 'New Cairo, Egypt',
      imagePath: 'assets/images/image4.png',
      rating: 4.4,
      reviews: 429,
    ),

  ];
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),

      shrinkWrap: true,

      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,mainAxisExtent: 280),
      itemBuilder: (context, index) {
        return GridItem(
            product: items[index]);
      },
      itemCount: items.length,
    );
  }
}
