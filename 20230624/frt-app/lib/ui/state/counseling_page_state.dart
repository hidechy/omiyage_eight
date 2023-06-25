import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/counseling_question_model.dart';
import '../../enum/answer.dart';

part 'counseling_page_state.freezed.dart';

@freezed
class CounselingPageState with _$CounselingPageState {
  factory CounselingPageState({
    @Default(CounselingQuestionModel()) CounselingQuestionModel question,
    AnswerFlag? answerType1,
    AnswerFlag? answerType2,
    AnswerFlag? answerType3,
  }) = _CounselingPageState;
}
