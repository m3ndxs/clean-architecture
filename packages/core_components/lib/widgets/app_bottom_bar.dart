import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';

class BottomBarItem {
  final IconData icon;
  final String label;

  BottomBarItem({required this.icon, required this.label});
}

class AppBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final homeIcon = currentIndex == 0 ? Icons.home : Icons.home_outlined;
    final favoriteIcon = currentIndex == 1
        ? Icons.favorite
        : Icons.favorite_border;
    final List<BottomNavigationBarItem> defaultItems = [
      BottomNavigationBarItem(icon: Icon(homeIcon), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(favoriteIcon), label: 'Favorites'),
    ];
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(AppSpacing.xl),
        topRight: Radius.circular(AppSpacing.xl),
      ),
      child: BottomNavigationBar(
        iconSize: 28,
        items: defaultItems,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.brandPrimaryPure,
        unselectedItemColor: AppColors.neutralText,
        onTap: onTap,
        backgroundColor: AppColors.brandPrimarySuperLight,
      ),
    );
  }
}
