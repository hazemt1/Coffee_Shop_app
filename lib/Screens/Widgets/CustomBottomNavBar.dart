import 'package:coffee/Screens/Widgets/NavBarItem.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavBarItem(svgPath: 'assets/icons/home.svg',page: 0,),
          NavBarItem(svgPath: 'assets/icons/heart.svg',page: 1,),
          NavBarItem(svgPath: 'assets/icons/bookmark.svg',page: 2,),
          NavBarItem(svgPath: 'assets/icons/user.svg',page: 3,),
        ],
      ),
    );
  }
}
