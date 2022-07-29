import 'package:coffee/Screens/Home/Widgets/Grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:coffee/Screens/Home/Widgets/Searchbar.dart';
import 'package:coffee/helper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 70,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coffee first.",
                        style: style(32),
                      ),
                      Text(
                        "Schemes later.",
                        style: style(32),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/images/user.png',scale: 0.85,),
                ],
              ),
            ),
            Row(
              children: [
                const Searchbar(),
                InkWell(child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xffFDB921),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: SvgPicture.asset('assets/icons/search.svg')),
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Text('Coffee Products',style: style(22),),
            const SizedBox(height: 20,),
            Grid(),
          ],
        ),
      ),
    );
  }
}
