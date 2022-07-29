import 'package:coffee/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IngredientWidget extends StatelessWidget {
  String name;
  String svgPath;
  IngredientWidget({Key? key,required this.svgPath,required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffEDF0EF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgPath,height: 40,width: 50,color: const Color(0xffA6840D),),
          const SizedBox(height: 5,),
          Text(name,style: style(22),)
        ],
      ),
    );
  }
}
