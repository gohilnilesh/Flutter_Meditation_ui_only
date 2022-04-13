import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:only_ui/constant.dart';
import 'package:only_ui/widgets/bottomnavigation.dart';
import 'package:only_ui/widgets/searchbar.dart';

import '../widgets/sessioncard.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = 'detail-screen/';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: bottomnavigation(),
        body: Stack(
          children: [
            Container(
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                color: kBlueLightColor,
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/img/meditation_bg.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Meditation',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '3-10 Mins',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.50,
                      child: Text(
                        'Live Fit and Healthier by the help of Meditation.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.5, child: searchbar()),
                    Wrap(
                      spacing: 15,
                      runSpacing: 10,
                      children: [
                        SessionCard(
                          sessionNum: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          press: () {},
                          sessionNum: 2,
                        ),
                        SessionCard(
                          press: () {},
                          sessionNum: 3,
                        ),
                        SessionCard(
                          press: () {},
                          sessionNum: 4,
                        ),
                        SessionCard(
                          press: () {},
                          sessionNum: 5,
                        ),
                        SessionCard(
                          press: () {},
                          sessionNum: 6,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Meditation',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      height: 80,
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.grey[300],
                      ),
                      child: Row(children: [
                        SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg",
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Next Sessions',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Get Updated with our Meditation Application to fit your body.',
                                  style: TextStyle(
                                    fontFamily: "Cairo",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset('assets/icons/Lock.svg'),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
