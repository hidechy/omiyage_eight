import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/akachanhonpo_category_top_info_model.dart';

part 'akachanhonpo_category_top_page_state.freezed.dart';

@freezed
class AkachanhonpoCategoryTopPageState with _$AkachanhonpoCategoryTopPageState {
  factory AkachanhonpoCategoryTopPageState({
    @Default(AkachanhonpoCategoryTopInfoModel()) AkachanhonpoCategoryTopInfoModel model,
  }) = _AkachanhonpoCategoryTopPageState;
}
