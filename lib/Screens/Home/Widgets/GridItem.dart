import 'package:coffee/helper.dart';
import 'package:coffee/models/Product.dart';
import 'package:coffee/Screens/Product/ProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridItem extends StatefulWidget {
  Product product;
  GridItem({Key? key, required this.product}) : super(key: key);

  @override
  State<GridItem> createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              product: widget.product,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 5),
                child: SizedBox(
                  height: 168,
                  width: 158,
                  child: Image.asset(
                    widget.product.imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color(0xffEDF0EF),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      color: selected ? const Color(0xffFDB921) : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget.product.name,
            style: style(22),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.amberAccent,
              ),
              Text(
                widget.product.rating.toString(),
                style: style(16),
              ),
              Text(
                ' ${widget.product.reviews} reviews',
                style: style(16, color: const Color(0xffB6C0C1)),
              ),
            ],
          ),
          Text(widget.product.address, style: style(17))
        ],
      ),
    );
  }
}
