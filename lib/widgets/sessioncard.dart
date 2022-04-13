import 'package:flutter/material.dart';

import '../constant.dart';

class SessionCard extends StatelessWidget {
  final VoidCallback press;
  final int sessionNum;
  final bool isDone;
  const SessionCard({
    Key? key,
    required this.sessionNum,
    this.isDone = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraints.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: kShadowColor,
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(13)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(children: [
                  Container(
                    height: 45,
                    width: 46,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Session $sessionNum',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
