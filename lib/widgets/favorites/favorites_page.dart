import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';
import 'package:meal_explorer/widgets/commons/results_list.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSpacing.paddingHorizontalMd,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSpacing.lg),
          Text(
            'Favorite recipes',
            style: AppTypography.fontBodyXL.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),

          SizedBox(height: AppSpacing.lg),
          ResultsList(),
          SizedBox(height: AppSpacing.lg),
        ],
      ),
    );
  }
}
