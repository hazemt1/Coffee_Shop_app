import 'package:coffee/Bloc/selectedPage/selected_page_cubit.dart';
import 'package:coffee/Screens/Home/HomeScreen.dart';
import 'package:coffee/Screens/Widgets/CustomBottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Widget> list=[
    HomeScreen(),
    Container(color: Colors.redAccent,),
    Container(color: Colors.black,),
    Container(color: Colors.blue,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: list[BlocProvider.of<SelectedPageCubit>(context).state.page],
      ),
    );
  }
}
