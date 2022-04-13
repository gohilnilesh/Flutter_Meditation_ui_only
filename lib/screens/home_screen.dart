// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:only_ui/screens/detailScreen.dart';

import '../widgets/bottomnavigation.dart';
import '../widgets/category_widget.dart';
import '../widgets/searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: bottomnavigation(),
      body: Stack(children: [
        Container(
          height: size.height * .45,
          decoration: const BoxDecoration(
            color: Color(0xFFF5CEBB),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage(
                'assets/img/undraw_pilates_gpdb.png',
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BA1),
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamed(DetailScreen.routeName),
                        child: SvgPicture.asset("assets/icons/menu.svg")),
                  ),
                ),
                const Text(
                  "Good Morning Nilesh !",
                  style: TextStyle(
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                searchbar(),
                Expanded(
                  child: GridView.count(
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      categorywidget(
                        Svgsrc: "assets/icons/Hamburger.svg",
                        title: "Diet Recommendation",
                        ontap: () {},
                      ),
                      categorywidget(
                        Svgsrc: "assets/icons/Excrecises.svg",
                        title: "Excercise",
                        ontap: () {},
                      ),
                      categorywidget(
                        title: "Meditation",
                        Svgsrc: 'assets/icons/Meditation.svg',
                        ontap: () {},
                      ),
                      categorywidget(
                        Svgsrc: 'assets/icons/yoga.svg',
                        title: 'Yoga',
                        ontap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

