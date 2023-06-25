import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_search_field_state.freezed.dart';

@freezed
class RecipeSearchFieldState with _$RecipeSearchFieldState {
  const RecipeSearchFieldState._();

  const factory RecipeSearchFieldState({
    @Default('') String current,
  }) = _RecipeSearchFieldState;

  bool get isEmpty => current.isEmpty;

  bool get isNotEmpty => !isEmpty;
}
