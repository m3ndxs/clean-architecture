import 'package:equatable/equatable.dart';
import 'package:meal_explorer/features/meal_recipes/domain/entities/ingredient.dart';

class MealDetail extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final List<Ingredient> ingredients;
  final String instructions;

  const MealDetail({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
  });

  @override
  List<Object?> get props => [id, name, imageUrl, ingredients, instructions];
}
