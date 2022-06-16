import 'package:flutter/material.dart';
import 'package:meals_app/widget/category_meals_screen.dart';
import 'package:meals_app/widget/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          canvasColor: Colors.white70,
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
                titleSmall: const TextStyle(
                    fontFamily: "RobotoCondensed", fontWeight: FontWeight.bold),
                titleMedium: const TextStyle(
                    fontFamily: "RobotoCondensed", fontWeight: FontWeight.bold),
                titleLarge: const TextStyle(
                    fontFamily: "RobotoCondensed", fontWeight: FontWeight.bold),
              )),
      home: const CategoryScreen(),
      routes: {
        "/categories/meals": (context) => CategoryMealsScreen()
      },
    );
  }
}
