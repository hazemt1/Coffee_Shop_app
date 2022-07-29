import 'package:coffee/Screens/Product/Widgets/IngredientWidget.dart';
import 'package:coffee/helper.dart';
import 'package:coffee/models/Product.dart';
import 'package:coffee/Screens/Product/Widgets/CustomBackButton.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  Product product;
  ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Image.asset(
                      product.imagePath,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .5,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        product.name,
                        style: style(28),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          ),
                          Text(
                            product.rating.toString(),
                            style: style(18),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            ' ${product.reviews} reviews',
                            style: style(18, color: const Color(0xffB6C0C1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(product.address, style: style(19)),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IngredientWidget(
                              svgPath: 'assets/icons/coffee.svg',
                              name: 'Coffee'),
                          IngredientWidget(
                              svgPath: 'assets/icons/milk.svg',
                              name: 'Milk'
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      Container(
                        height: 65,
                        // width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffFDB921),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Center(child: Text('Order Now',style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const CustomBackButton(),
        ],
      ),
    );
  }
}
