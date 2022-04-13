import 'package:flutter/material.dart';
import 'package:only_ui/screens/detailScreen.dart';

import 'bottomnavigationbar.dart';

class bottomnavigation extends StatelessWidget {
  const bottomnavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        BottomNavItem(
          SvgSrc: "assets/icons/calendar.svg",
          title: "Today",
          press: () {},
          isActive: false,
        ),
        BottomNavItem(
          SvgSrc: "assets/icons/gym.svg",
          title: "Excercise",
          press: () {},
          isActive: true,
        ),
        BottomNavItem(
          SvgSrc: "assets/icons/Settings.svg",
          title: "Settings",
          press: () {},
          isActive: false,
        ),
      ]),
    );
  }
}
