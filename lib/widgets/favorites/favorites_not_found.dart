import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';

class FavoritesNotFound extends StatelessWidget {
  const FavoritesNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_outline,
            size: 80,
            color: AppColors.neutralDivisor,
          ),
          const SizedBox(height: AppSpacing.lg),
          Text('No recipes yet', style: AppTypography.fontHeadingXL),
          const SizedBox(height: AppSpacing.lg),
          Text(
            'Start exploring and add your favorite recipes!',
            style: AppTypography.fontBodyLG,
          ),
        ],
      ),
    );
  }
}
