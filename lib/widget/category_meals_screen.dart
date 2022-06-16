import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryName;

  const CategoryMealsScreen({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: Text("Category Meals Screen"),
    );
  }
}
