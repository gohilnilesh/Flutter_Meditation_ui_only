import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class BottomNavItem extends StatelessWidget {
  final VoidCallback press;
  final String SvgSrc;
  final String title;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.press,
    required this.SvgSrc,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            SvgSrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
