import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    const meal = {
      'thumbnailUrl':
          'https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg',
      'name': 'Beef and Mustard Pie',
      'ingredients': [
        {'name': 'Beef', 'measure': '1kg'},
        {'name': 'Onions', 'measure': '3'},
      ],
      'instructions':
          'Preheat the oven to 150C/300F/Gas 2. Heat a large casserole dish and add the beef. Fry until browned all over. Remove and set aside.',
    };
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Detail', style: AppTypography.fontBodyMD),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSpacing.md),
              child: Image.network(
                meal['thumbnailUrl'] as String,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            Row(
              children: [
                Expanded(
                  child: Text(
                    meal['name'] as String,
                    style: AppTypography.fontHeadingSM.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                AppFavoriteIcon(isFavorite: true, onPressed: () {}),
              ],
            ),
            const SizedBox(height: AppSpacing.md),
            Divider(),
            const SizedBox(height: AppSpacing.md),
            Text('Ingredients', style: AppTypography.fontHeadingXS),
            const SizedBox(height: AppSpacing.sm),
            ...(meal['ingredients'] as List<dynamic>).map(
              (i) => Text('- ${i['measure']} ${i['name']}'),
            ),
            const SizedBox(height: AppSpacing.md),
            Divider(),
            const SizedBox(height: AppSpacing.md),
            Text('Instructions', style: AppTypography.fontHeadingXS),
            const SizedBox(height: AppSpacing.sm),
            Text(meal['instructions'] as String),
          ],
        ),
      ),
    );
  }
}
