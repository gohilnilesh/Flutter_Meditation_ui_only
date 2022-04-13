import 'package:flutter/material.dart';
import 'package:only_ui/constant.dart';
import 'package:only_ui/screens/detailScreen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation',
      theme: ThemeData(
        backgroundColor: kBackgroundColor,
        fontFamily: "Cairo",
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
      routes: {
        DetailScreen.routeName: (ctx) => DetailScreen(),
      },
    );
  }
}
