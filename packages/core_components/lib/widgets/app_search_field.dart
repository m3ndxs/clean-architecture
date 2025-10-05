import 'package:core_components/tokens/colors.dart';
import 'package:core_components/tokens/spacing.dart';
import 'package:core_components/tokens/typography.dart';
import 'package:flutter/material.dart';

enum SearchFieldVariant { defaultSearch, itemSearch }

class AppSearchField extends StatelessWidget {
  final String hintText;
  final Function(String value)? onEditingComplete;
  final TextEditingController controller;
  final bool isFocused;

  const AppSearchField({
    super.key,
    this.hintText = 'Search',
    this.onEditingComplete,
    required this.controller,
    this.isFocused = false,
  });

  @override
  Widget build(BuildContext context) {
    final prefixIcon = Icon(
      Icons.search,
      color: AppColors.neutralTextSoft,
      size: 24,
    );

    return TextField(
      controller: controller,
      onEditingComplete: () {
        if (onEditingComplete != null && controller.text.isNotEmpty) {
          onEditingComplete!(controller.text);
        }
      },
      style: AppTypography.fontBodyMD.copyWith(color: AppColors.neutralText),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTypography.fontBodyMD.copyWith(
          color: AppColors.neutralTextSoft,
        ),

        filled: true,
        fillColor: AppColors.neutralBackground,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.sm,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.xl),
          borderSide: BorderSide(color: AppColors.neutralDivisor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.xl),
          borderSide: BorderSide(color: AppColors.brandPrimaryPure, width: 1.5),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: AppSpacing.md, right: AppSpacing.xs),
          child: prefixIcon,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
      ),
    );
  }
}
