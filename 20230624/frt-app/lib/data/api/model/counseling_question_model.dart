import 'package:freezed_annotation/freezed_annotation.dart';

part 'counseling_question_model.freezed.dart';
part 'counseling_question_model.g.dart';

@freezed
class CounselingQuestionModel with _$CounselingQuestionModel {
  const factory CounselingQuestionModel({
    /* カウンセリング質問1(通院中・通院同等トラブル有無) */
    @Default('') String counseling1,
/* カウンセリング質問2(専門医の許可の有無) */
    @Default('') String counseling2,
/* カウンセリング質問3(敏感・不安定有無) */
    @Default('') String counseling3,
/* カウンセリング１メッセージコード ※別ファイル：メッセージコード_一覧参照 */
    @Default('') String counseling1Code,
/* カウンセリング２メッセージコード ※別ファイル：メッセージコード_一覧参照 */
    @Default('') String counseling2Code,
/* カウンセリング３メッセージコード ※別ファイル：メッセージコード_一覧参照 */
    @Default('') String counseling3Code,
  }) = _CounselingQuestionModel;

  factory CounselingQuestionModel.fromJson(Map<String, dynamic> json) => _$CounselingQuestionModelFromJson(json);
}
