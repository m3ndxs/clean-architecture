import 'package:meal_explorer/features/meal_recipes/domain/entities/meal_detail.dart';
import 'package:meal_explorer/features/meal_recipes/domain/failure.dart';
import 'package:mocktail/mocktail.dart';

const tMealDetail = MealDetail(
  id: '515452',
  name: 'Chicken',
  imageUrl: 'thumb.jpg',
  ingredients: [],
  instructions: 'instructions',
);
const tListMealDetail = [tMealDetail];
const tIdExample = '515452';
const tNameExample = 'Chicken';
const tFailure = GeneralFailure('Generic Error');

void registerFallbackValues() {
  registerFallbackValue(tMealDetail);
}