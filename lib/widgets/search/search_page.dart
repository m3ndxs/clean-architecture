import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';
import 'package:meal_explorer/widgets/commons/results_list.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppSpacing.lg),
        AppSearchField(
          hintText: 'Search',
          controller: controller,
          onEditingComplete: (value) => print(value),
        ),

        SizedBox(height: AppSpacing.lg),
        Text(
          'Recipes',
          style: AppTypography.fontBodyXL.copyWith(fontWeight: FontWeight.w700),
        ),

        SizedBox(height: AppSpacing.lg),
        ResultsList(),

        SizedBox(height: AppSpacing.lg),
      ],
    );
  }
}
