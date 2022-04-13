import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white),
      child: TextField(
          decoration: InputDecoration(
        hintText: "Search",
        icon: SvgPicture.asset("assets/icons/search.svg"),
        border: InputBorder.none,
      )),
    );
  }
}
