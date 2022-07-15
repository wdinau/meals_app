import 'package:flutter/material.dart';
import 'package:meals_app/screen/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final String categoryId;
  final Color color;

  const CategoryItem(
      {Key? key,
      required this.categoryId,
      required this.categoryName,
      required this.color})
      : super(key: key);

  void selectCategory(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return CategoryMealsScreen(
    //       key: ValueKey(categoryId), categoryName: categoryName);
    // }));
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName,
        arguments: {"id": categoryId, "title": categoryName});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            categoryName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          decoration: BoxDecoration(
              color: color,
              gradient: LinearGradient(
                  colors: [color.withOpacity(0.6), color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(6)),
        ));
  }
}
