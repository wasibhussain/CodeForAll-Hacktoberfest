import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/meals_provider.dart';

enum Filter { glutenFree, lactosFree, vegetarianFree, veganFree }

class FiltersNotifer extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifer()
      : super({
          Filter.glutenFree: false,
          Filter.lactosFree: false,
          Filter.vegetarianFree: false,
          Filter.veganFree: false,
        });

  void setFilters(Map<Filter, bool> choosenFilters) {
    state = choosenFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifer, Map<Filter, bool>>(
  (ref) => FiltersNotifer(),
);

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  return meals.where((meal) {
    if (activeFilters[Filter.glutenFree]! && !meal.isGlutenFree) {
      return false;
    }
    if (activeFilters[Filter.lactosFree]! && !meal.isLactoseFree) {
      return false;
    }
    if (activeFilters[Filter.vegetarianFree]! && !meal.isVegetarian) {
      return false;
    }
    if (activeFilters[Filter.veganFree]! && !meal.isVegan) {
      return false;
    }
    return true;
  }).toList();
});
