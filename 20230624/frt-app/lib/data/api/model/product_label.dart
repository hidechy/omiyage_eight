// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/label_type.dart';
import '../../../util/access_point_info_manager.dart';

part 'product_label.freezed.dart';

part 'product_label.g.dart';

@freezed
class ProductLabel with _$ProductLabel {
  const ProductLabel._();

  const factory ProductLabel({
    /*  ラベルの括り アイコンラベルがない場合は空文字 0: 医薬品 1: 売り切り 2: 割引条件 3: 商品情報 4: その他アピール */
    @Default(LabelType.none) @JsonKey(name: 'labelType') LabelType labelType,
    /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      advertising_labelの値をラベル表記に利用する。
      アイコンラベルがない場合は空文字
      商品券企画
      新商品
      大型パック
      以下略
    */
    @Default('') String name,
    /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      ラベル表記に伴うスタイルの値
      1red
      2gry
      3gry
    */
    @Default('') String style,
    /*
    アイコンコード
      アイコンラベルがない場合は空文字
      SYOUCP
      SHINSY
      OOGTPK
      以下略
    */
    @Default('') @JsonKey(name: 'iconCode') String iconCode,
    /*
      フロント画面に表示する文言
      アイコンラベルがない場合は空文字
      例：
      これはお酒です
      これはみりんです
      ノンアルコール
    */
    @Default('') @JsonKey(name: 'frontLabel') String frontLabel,
    /*
      広告アイコン画像のフロント用フルパス
      /nds/shared/icon-koukoku/ + {iconCode}.png
      - 商品アイコン設定無しの場合、nullを返却
      例：
      /nds/shared/icon-koukoku/SYOUCP.png
    */
    @Default('') @JsonKey(name: 'imageFullPath') String imageFullPath,
  }) = _ProductLabel;

  factory ProductLabel.fromJson(Map<String, dynamic> json) => _$ProductLabelFromJson(json);

  String get imageUrl => imageFullPath.isEmpty ? '' : '$iynsBaseUrl$imageFullPath';
}
