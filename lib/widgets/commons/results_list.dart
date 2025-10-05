import 'package:core_components/widgets/app_recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:meal_explorer/meal_detail_page.dart';

class ResultsList extends StatelessWidget {
  const ResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppRecipeCard(
          imageUrl:
              'https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg',
          title: 'Beef and Mustard Pie',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => MealDetailPage()),
            );
          },
        ),
      ],
    );
  }
}
