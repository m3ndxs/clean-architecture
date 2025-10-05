import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';

class ResultsNotFound extends StatelessWidget {
  const ResultsNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error, size: 80, color: AppColors.neutralDivisor),
          const SizedBox(height: AppSpacing.lg),
          Text('No results', style: AppTypography.fontHeadingXL),
          const SizedBox(height: AppSpacing.lg),
          Text(
            'Oops, we couldn\'t find any results for that search! How about exploring other recipes?',
            style: AppTypography.fontBodyLG,
          ),
        ],
      ),
    );
  }
}
