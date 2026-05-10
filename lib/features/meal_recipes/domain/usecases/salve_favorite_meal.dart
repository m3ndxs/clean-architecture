import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';

abstract class SalveFavoriteMeal {
  Future<void> call(MealDetail meal);
}

class SalveFavoriteMealImpl implements SalveFavoriteMeal {
  final MealRepository repository;

  SalveFavoriteMealImpl(this.repository);
  
  @override
  Future<void> call(MealDetail meal) async {
    return await repository.saveFavoriteMeal(meal);
  }

}

