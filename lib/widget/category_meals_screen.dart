import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = args["id"];
    final categoryName = args["title"] ?? "";

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: const Text("Category Meals Screen"),
    );
  }
}
