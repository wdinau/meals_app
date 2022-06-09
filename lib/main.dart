import 'package:flutter/material.dart';
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
        primarySwatch: Colors.yellow,
      ),
      home: const CategoryScreen(),
    );
  }
}
