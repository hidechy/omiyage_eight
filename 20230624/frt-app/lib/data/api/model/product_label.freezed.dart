// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductLabel _$ProductLabelFromJson(Map<String, dynamic> json) {
  return _ProductLabel.fromJson(json);
}

/// @nodoc
mixin _$ProductLabel {
/*  ラベルの括り アイコンラベルがない場合は空文字 0: 医薬品 1: 売り切り 2: 割引条件 3: 商品情報 4: その他アピール */
  @JsonKey(name: 'labelType')
  LabelType get labelType =>
      throw _privateConstructorUsedError; /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      advertising_labelの値をラベル表記に利用する。
      アイコンラベルがない場合は空文字
      商品券企画
      新商品
      大型パック
      以下略
    */
  String get name =>
      throw _privateConstructorUsedError; /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      ラベル表記に伴うスタイルの値
      1red
      2gry
      3gry
    */
  String get style =>
      throw _privateConstructorUsedError; /*
    アイコンコード
      アイコンラベルがない場合は空文字
      SYOUCP
      SHINSY
      OOGTPK
      以下略
    */
  @JsonKey(name: 'iconCode')
  String get iconCode =>
      throw _privateConstructorUsedError; /*
      フロント画面に表示する文言
      アイコンラベルがない場合は空文字
      例：
      これはお酒です
      これはみりんです
      ノンアルコール
    */
  @JsonKey(name: 'frontLabel')
  String get frontLabel =>
      throw _privateConstructorUsedError; /*
      広告アイコン画像のフロント用フルパス
      /nds/shared/icon-koukoku/ + {iconCode}.png
      - 商品アイコン設定無しの場合、nullを返却
      例：
      /nds/shared/icon-koukoku/SYOUCP.png
    */
  @JsonKey(name: 'imageFullPath')
  String get imageFullPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductLabelCopyWith<ProductLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLabelCopyWith<$Res> {
  factory $ProductLabelCopyWith(
          ProductLabel value, $Res Function(ProductLabel) then) =
      _$ProductLabelCopyWithImpl<$Res, ProductLabel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'labelType') LabelType labelType,
      String name,
      String style,
      @JsonKey(name: 'iconCode') String iconCode,
      @JsonKey(name: 'frontLabel') String frontLabel,
      @JsonKey(name: 'imageFullPath') String imageFullPath});
}

/// @nodoc
class _$ProductLabelCopyWithImpl<$Res, $Val extends ProductLabel>
    implements $ProductLabelCopyWith<$Res> {
  _$ProductLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelType = null,
    Object? name = null,
    Object? style = null,
    Object? iconCode = null,
    Object? frontLabel = null,
    Object? imageFullPath = null,
  }) {
    return _then(_value.copyWith(
      labelType: null == labelType
          ? _value.labelType
          : labelType // ignore: cast_nullable_to_non_nullable
              as LabelType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      frontLabel: null == frontLabel
          ? _value.frontLabel
          : frontLabel // ignore: cast_nullable_to_non_nullable
              as String,
      imageFullPath: null == imageFullPath
          ? _value.imageFullPath
          : imageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductLabelCopyWith<$Res>
    implements $ProductLabelCopyWith<$Res> {
  factory _$$_ProductLabelCopyWith(
          _$_ProductLabel value, $Res Function(_$_ProductLabel) then) =
      __$$_ProductLabelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'labelType') LabelType labelType,
      String name,
      String style,
      @JsonKey(name: 'iconCode') String iconCode,
      @JsonKey(name: 'frontLabel') String frontLabel,
      @JsonKey(name: 'imageFullPath') String imageFullPath});
}

/// @nodoc
class __$$_ProductLabelCopyWithImpl<$Res>
    extends _$ProductLabelCopyWithImpl<$Res, _$_ProductLabel>
    implements _$$_ProductLabelCopyWith<$Res> {
  __$$_ProductLabelCopyWithImpl(
      _$_ProductLabel _value, $Res Function(_$_ProductLabel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelType = null,
    Object? name = null,
    Object? style = null,
    Object? iconCode = null,
    Object? frontLabel = null,
    Object? imageFullPath = null,
  }) {
    return _then(_$_ProductLabel(
      labelType: null == labelType
          ? _value.labelType
          : labelType // ignore: cast_nullable_to_non_nullable
              as LabelType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      iconCode: null == iconCode
          ? _value.iconCode
          : iconCode // ignore: cast_nullable_to_non_nullable
              as String,
      frontLabel: null == frontLabel
          ? _value.frontLabel
          : frontLabel // ignore: cast_nullable_to_non_nullable
              as String,
      imageFullPath: null == imageFullPath
          ? _value.imageFullPath
          : imageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductLabel extends _ProductLabel {
  const _$_ProductLabel(
      {@JsonKey(name: 'labelType') this.labelType = LabelType.none,
      this.name = '',
      this.style = '',
      @JsonKey(name: 'iconCode') this.iconCode = '',
      @JsonKey(name: 'frontLabel') this.frontLabel = '',
      @JsonKey(name: 'imageFullPath') this.imageFullPath = ''})
      : super._();

  factory _$_ProductLabel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductLabelFromJson(json);

/*  ラベルの括り アイコンラベルがない場合は空文字 0: 医薬品 1: 売り切り 2: 割引条件 3: 商品情報 4: その他アピール */
  @override
  @JsonKey(name: 'labelType')
  final LabelType labelType;
/* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      advertising_labelの値をラベル表記に利用する。
      アイコンラベルがない場合は空文字
      商品券企画
      新商品
      大型パック
      以下略
    */
  @override
  @JsonKey()
  final String name;
/* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      ラベル表記に伴うスタイルの値
      1red
      2gry
      3gry
    */
  @override
  @JsonKey()
  final String style;
/*
    アイコンコード
      アイコンラベルがない場合は空文字
      SYOUCP
      SHINSY
      OOGTPK
      以下略
    */
  @override
  @JsonKey(name: 'iconCode')
  final String iconCode;
/*
      フロント画面に表示する文言
      アイコンラベルがない場合は空文字
      例：
      これはお酒です
      これはみりんです
      ノンアルコール
    */
  @override
  @JsonKey(name: 'frontLabel')
  final String frontLabel;
/*
      広告アイコン画像のフロント用フルパス
      /nds/shared/icon-koukoku/ + {iconCode}.png
      - 商品アイコン設定無しの場合、nullを返却
      例：
      /nds/shared/icon-koukoku/SYOUCP.png
    */
  @override
  @JsonKey(name: 'imageFullPath')
  final String imageFullPath;

  @override
  String toString() {
    return 'ProductLabel(labelType: $labelType, name: $name, style: $style, iconCode: $iconCode, frontLabel: $frontLabel, imageFullPath: $imageFullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductLabel &&
            (identical(other.labelType, labelType) ||
                other.labelType == labelType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.iconCode, iconCode) ||
                other.iconCode == iconCode) &&
            (identical(other.frontLabel, frontLabel) ||
                other.frontLabel == frontLabel) &&
            (identical(other.imageFullPath, imageFullPath) ||
                other.imageFullPath == imageFullPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, labelType, name, style, iconCode, frontLabel, imageFullPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductLabelCopyWith<_$_ProductLabel> get copyWith =>
      __$$_ProductLabelCopyWithImpl<_$_ProductLabel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductLabelToJson(
      this,
    );
  }
}

abstract class _ProductLabel extends ProductLabel {
  const factory _ProductLabel(
          {@JsonKey(name: 'labelType') final LabelType labelType,
          final String name,
          final String style,
          @JsonKey(name: 'iconCode') final String iconCode,
          @JsonKey(name: 'frontLabel') final String frontLabel,
          @JsonKey(name: 'imageFullPath') final String imageFullPath}) =
      _$_ProductLabel;
  const _ProductLabel._() : super._();

  factory _ProductLabel.fromJson(Map<String, dynamic> json) =
      _$_ProductLabel.fromJson;

  @override /*  ラベルの括り アイコンラベルがない場合は空文字 0: 医薬品 1: 売り切り 2: 割引条件 3: 商品情報 4: その他アピール */
  @JsonKey(name: 'labelType')
  LabelType get labelType;
  @override /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      advertising_labelの値をラベル表記に利用する。
      アイコンラベルがない場合は空文字
      商品券企画
      新商品
      大型パック
      以下略
    */
  String get name;
  @override /* advertising_icon_codeになんらかの値がある、且つadvertising_labelに値がある場合、
      ラベル表記に伴うスタイルの値
      1red
      2gry
      3gry
    */
  String get style;
  @override /*
    アイコンコード
      アイコンラベルがない場合は空文字
      SYOUCP
      SHINSY
      OOGTPK
      以下略
    */
  @JsonKey(name: 'iconCode')
  String get iconCode;
  @override /*
      フロント画面に表示する文言
      アイコンラベルがない場合は空文字
      例：
      これはお酒です
      これはみりんです
      ノンアルコール
    */
  @JsonKey(name: 'frontLabel')
  String get frontLabel;
  @override /*
      広告アイコン画像のフロント用フルパス
      /nds/shared/icon-koukoku/ + {iconCode}.png
      - 商品アイコン設定無しの場合、nullを返却
      例：
      /nds/shared/icon-koukoku/SYOUCP.png
    */
  @JsonKey(name: 'imageFullPath')
  String get imageFullPath;
  @override
  @JsonKey(ignore: true)
  _$$_ProductLabelCopyWith<_$_ProductLabel> get copyWith =>
      throw _privateConstructorUsedError;
}
