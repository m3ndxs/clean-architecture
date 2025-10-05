import 'package:core_components/tokens/colors.dart';
import 'package:core_components/tokens/spacing.dart';
import 'package:flutter/material.dart';

class AppFavoriteIcon extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback? onPressed;
  final double size;

  const AppFavoriteIcon({
    super.key,
    required this.isFavorite,
    this.onPressed,
    this.size = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + AppSpacing.xs,
      height: size + AppSpacing.xs,
      alignment: Alignment.topRight,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(size),
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.xs / 2),
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: size,
              color: AppColors.favoriteRed,
            ),
          ),
        ),
      ),
    );
  }
}
