import 'package:flutter/material.dart';
import 'package:meals_app/model/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/categories/meals";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = args["id"];
    final categoryName = args["title"] ?? "";
    final categoryMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
