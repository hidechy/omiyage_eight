import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_casset_state.freezed.dart';

/// ProductCassetteViewModel側でLocatorMixinを使ってCartInfoManagerを取得するためのState
/// 現状商品カセット独自のStateがないので空だが、空でもViewModelをStateNotifierのextends
/// いしないとCartInfoManagerをreadしようとするとDependencyNotFoundExceptionが発生する
@freezed
class ProductCassetteState with _$ProductCassetteState {
  factory ProductCassetteState() = _ProductCassetteState;
}
