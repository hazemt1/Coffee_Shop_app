import 'package:coffee/Bloc/selectedPage/selected_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarItem extends StatelessWidget {
  String svgPath;
  int page;
  NavBarItem({Key? key, required this.svgPath, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedPageCubit, SelectedPageState>(
  builder: (context, state) {
    return InkWell(
      onTap: (){
        BlocProvider.of<SelectedPageCubit>(context).setPage(page);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color:
                page == state.page
                    ? const Color(0xffFDB921)
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(26)),
        child: SvgPicture.asset(
          svgPath,
          color:
              page == state.page
                  ? Colors.white
                  : const Color(0xffB7C1C2),
        ),
      ),
    );
  },
);
  }
}
