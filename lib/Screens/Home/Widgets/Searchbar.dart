import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        height: 60,
        // padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: const  Color(0xffEDF0EF),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            const Icon(CupertinoIcons.search,size: 30,color: Color(0xffA3ACAD),),
            TextField(
              decoration: InputDecoration(
                constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: MediaQuery.of(context).size.width-145
                ),
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: GoogleFonts.raleway(
                  textStyle:
                  const TextStyle(fontWeight: FontWeight.bold),
                  color: const Color(0xffA3ACAD),
                ),

              ),

            )

          ],
        ),
      ),

    );
  }
}
