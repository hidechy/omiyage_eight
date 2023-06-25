import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/recipe_detail_view_history_repository.dart';
import '../../data/shared_preferences/model/recipe_detail_view_history_model.dart';
import '../state/recipe_search_field_state.dart';

class RecipeSearchFieldViewModel extends StateNotifier<RecipeSearchFieldState> with LocatorMixin {
  RecipeSearchFieldViewModel(this._previous)
      : controller = TextEditingController(),
        _repository = GetIt.I.get<RecipeDetailViewHistoryRepository>(),
        super(const RecipeSearchFieldState());

  final TextEditingController controller;
  final RecipeDetailViewHistoryRepository _repository;
  final String _previous;

  @override
  void initState() {
    controller.addListener(() {
      state = state.copyWith(current: controller.text);
    });
    controller.text = _previous;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void cancel() => controller.text = _previous;

  void clear() => controller.text = '';

  Future<List<RecipeDetailViewHistoryModel>> viewHistories() async {
    return await _repository.fetchAny();
  }
}
