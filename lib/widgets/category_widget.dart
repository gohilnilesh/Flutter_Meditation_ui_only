import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class categorywidget extends StatelessWidget {
  final String Svgsrc;
  final String title;
  final VoidCallback ontap;
  const categorywidget({
    Key? key,
    required this.Svgsrc,
    required this.title, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1.0, 17),
              blurRadius: 13,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: ontap,
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset(Svgsrc),
                Text(
                  title,
                  style: TextStyle(color: kTextColor, fontSize: 15),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
