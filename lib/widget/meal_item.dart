import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem({Key? key}) : super(key: key);

  void onSelectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(6)),
        elevation: 4,
        child: Column(
          children: [
            //image
            // name
            // hearts
          ],
        ),
      ),
    );
  }
}
