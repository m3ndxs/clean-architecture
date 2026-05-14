import 'package:meal_explorer/features/meal_recipes/data/models/ingredient_model.dart';
import 'package:meal_explorer/features/meal_recipes/domain/entities/ingredient.dart';
import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';

class MealDetailModel extends MealDetail {
  const MealDetailModel({
    required super.id,
    required super.name,
    required super.ingredients,
    required super.imageUrl,
    required super.instructions,
  });

  static List<MealDetailModel> fromRemoteJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => MealDetailModel.fromRemoteJson(json))
        .toList();
  }

  // Convertendo JSON da API para objeto Dart
  factory MealDetailModel.fromRemoteJson(Map<String, dynamic> json) {
    final List<Ingredient>? ingredientModel = extractIngredients(json);

    // Pega os campos crus do JSON e cria um objeto MealDetailModel fortemente tipado
    return MealDetailModel(
      id: json['idMeal'],
      name: json['strMeal'],
      ingredients: ingredientModel!,
      imageUrl: json['strMealThumb'],
      instructions: json['strInstructions'],
    );
  }

  // Convertendo JSON Local para objeto Dart
  factory MealDetailModel.fromLocalJson(Map<String, dynamic> json) {
    List<dynamic> ingredients = json['ingredients'];

    // Transforma uma lista em outra
    final List<Ingredient> ingredientModel = ingredients
        .map(
          (e) => Ingredient(
            name: e['name'] as String,
            measure: e['measure'] as String,
          ),
        )
        .toList();

    return MealDetailModel(
      id: json['idMeal'],
      name: json['strMeal'],
      ingredients: ingredientModel,
      imageUrl: json['strMealThumb'],
      instructions: json['strInstructions'],
    );
  }

  static List<Ingredient>? extractIngredients(Map<String, dynamic> json) {
    final List<Ingredient> result = [];

    for (int i = 1; i <= 20; i++) {
      final ingredientName = json['strIngredient$i'] as String?;
      final measure = json['strMeasure$i'] as String?;

      if (ingredientName != null && ingredientName.trim().isNotEmpty) {
        result.add(
          Ingredient(name: ingredientName, measure: measure?.trim() ?? ''),
        );
      }
    }

    return result;
  }

  // Caminho Inverso, transforma um objeto em JSON
  Map<String, dynamic> toJson() {
    return {
      'idMeal': id,
      'strMeal': name,
      'strMealThumb': imageUrl,
      'strInstructions': instructions,
      'ingredients': ingredients
          .map((e) => (e as IngredientModel).toJson())
          .toList(),
    };
  }
}
