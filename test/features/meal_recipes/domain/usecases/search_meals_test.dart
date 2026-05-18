import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meal_explorer/features/meal_recipes/domain/repositories/meal_repository.dart';
import 'package:meal_explorer/features/meal_recipes/domain/usecases/search_meals.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';

class MockMealRepository extends Mock implements MealRepository {}

void main() {
  late MockMealRepository mockRepository;
  late SearchMeals usecase;

  setUp(() {
    mockRepository = MockMealRepository();
    usecase = SearchMealsImpl(mockRepository);
  });

  group('SearchMeals', () {
    test(
      'Must call mockRepository.searchMealsByName and return Right(List<MealDetails>) when success',
      () async {
        when(
          () => mockRepository.searchMealsByName(any()),
        ).thenAnswer((_) async => Right(tListMealDetail));

        final result = await usecase(tNameExample);

        expect(result, Right(tListMealDetail));
        verify(() => mockRepository.searchMealsByName(tNameExample)).called(1);
      },
    );

    test('Must call repository.getFavoriteMeals and return Left(Failure)', () async {
       when(
          () => mockRepository.searchMealsByName(any()),
        ).thenAnswer((_) async => Left(tFailure));

        final result = await usecase(tNameExample);

        expect(result, Left(tFailure));
        verify(() => mockRepository.searchMealsByName(tNameExample)).called(1);
    });
  });
}
