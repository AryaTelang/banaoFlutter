import 'package:banaofluttertask1/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPart extends StatelessWidget {
  const TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 5,
      mainAxisSpacing: 7,
      crossAxisCount: 2,
      childAspectRatio: 3,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book_rounded,
                  color: fontColor,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Programs",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: fontColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEEF3FD),
            border: Border.all(
              color: fontColor,
              width: 1,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book_rounded,
                  color: fontColor,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Get help",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: fontColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEEF3FD),
            border: Border.all(
              color: fontColor, //
              width: 1,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book_rounded,
                  color: fontColor,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Learn",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: fontColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEEF3FD),
            border: Border.all(
              color: fontColor,
              width: 1,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.book_rounded,
                  color: fontColor,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "DD Tracker",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      color: fontColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffEEF3FD),
            border: Border.all(
              color: fontColor,
              width: 1,
            ),
          ),
        ),
      ],
    );
  }
}
