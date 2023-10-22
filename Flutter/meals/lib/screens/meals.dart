import 'package:flutter/material.dart';

import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    this.title,
    required this.meals,
  });

  final String? title;
  final List<Meal> meals;

  void _selectMeal(context, meal) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MealDetailsScreen(
              meal: meal,
            )));
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uo..oh nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          SizedBox(height: 16),
          Text(
            'Try selecting another category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    ;
    if (meals.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealItem(
          meal: meals[index],
          onSelectMeal: _selectMeal,
        ),
      );
    }

    if (title == null) return mainContent;

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: mainContent,
    );
  }
}
