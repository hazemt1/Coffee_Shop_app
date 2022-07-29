import 'package:coffee/Bloc/selectedPage/selected_page_cubit.dart';
import 'package:coffee/Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => SelectedPageCubit(),
        child: BlocBuilder<SelectedPageCubit, SelectedPageState>(
          builder: (context, state) {
            return Home();
          },
        ),
      ),
    );
  }
}
