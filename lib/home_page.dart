import 'package:core_components/core_components.dart';
import 'package:flutter/material.dart';
import 'package:meal_explorer/widgets/favorites/favorites_page.dart';
import 'package:meal_explorer/widgets/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [SearchPage(), FavoritesPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: AppSpacing.lg),
          child: Image.asset('assets/images/app_logo_title.png'),
        ),
        centerTitle: true,
        backgroundColor: AppColors.neutralBackground,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: AppSpacing.paddingHorizontalMd,
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: AppBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
