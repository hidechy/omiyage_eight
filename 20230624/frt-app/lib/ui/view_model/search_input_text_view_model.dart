import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';

import '../../data/repository/search_history_repository.dart';
import '../../enum/search_history_type.dart';

class SearchInputTextViewModel {
  SearchInputTextViewModel(SearchHistoryType historyType, {String? initialText})
      : controller = TextEditingController(),
        _repository = GetIt.I.get<SearchHistoryRepository>(instanceName: historyType.toString()),
        searchHistoryType = historyType {
    if (initialText != null) {
      controller.text = initialText;
      previous = initialText;
    }
  }

  final TextEditingController controller;
  final SearchHistoryRepository _repository;
  final SearchHistoryType searchHistoryType;
  var previous = '';

  void cancel() => controller.text = previous;

  void clear() => controller.text = '';

  Future<void> submit() async => await _repository.add(controller.text);

  Future<void> deleteAll() async {
    await _repository.deleteAll();
    clear();
    previous = '';
  }

  Future<List<String>> suggestions(String pattern) async {
    return await _repository.fetchAny(pattern);
  }
}
