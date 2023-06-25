import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';

// 品番系商品選択ボックス
class ProductNumberSelectBox extends StatelessWidget {
  const ProductNumberSelectBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uniqueColorSizeSet = context.read<ProductDetailPageViewModel>().getColorSizeCombination();
    final colorList = List.of(uniqueColorSizeSet.keys);
    final productNumberState = context.select((ProductDetailPageState state) => state.productNumberState);
    final sizeList = uniqueColorSizeSet[productNumberState.color];
    final isDisplay = context.select((ProductDetailPageState state) =>
        state.productDetailModel.isConfirmSodastream || state.productDetailModel.product.isProductNumber);
    return Visibility(
      visible: isDisplay,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'カラー、サイズの順番で選択してください',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.blackAlpha80,
                height: 16 / 12,
                overflow: TextOverflow.clip,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 16.0),
            _colorSizeGuideLabel('カラー'),
            const SizedBox(height: 8.0),
            _dropdownButton(colorList, context, true, productNumberState.color, productNumberState.size),
            const SizedBox(height: 16.0),
            _colorSizeGuideLabel('サイズ'),
            const SizedBox(height: 8.0),
            _dropdownButton(sizeList, context, false, productNumberState.color, productNumberState.size),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Widget _colorSizeGuideLabel(String labelName) {
    return Text(
      labelName,
      style: const TextStyle(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w600,
        color: AppColors.blackAlpha60,
      ),
    );
  }

  Widget _dropdownButton(
      List<String?>? items, BuildContext context, bool isColor, String? currentColor, String? currentSize) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 16.0, right: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.inactive,
        ),
        borderRadius: BorderRadius.circular(4.0),
        color: (!isColor && currentColor == null) ? AppColors.background2 : null,
      ),
      child: DropdownButton(
        hint: const Text('選択してください'),
        value: _dropdownValue(isColor, items, isColor ? currentColor : currentSize),
        items: items
            ?.map<DropdownMenuItem<String>>(
              (content) => DropdownMenuItem(
                value: content,
                child: Text(content!),
              ),
            )
            .toList(),
        onChanged: (String? content) async {
          if (isColor) {
            final uniqueColorSizeSet = context.read<ProductDetailPageViewModel>().getColorSizeCombination();
            final sizeList = uniqueColorSizeSet[content];
            // カラー選択後、サイズが1種類しかなければ、そのサイズを選択する
            if (sizeList?.length == 1) {
              await context
                  .read<ProductDetailPageViewModel>()
                  .setProductNumberObject(color: content, size: sizeList?.first);
              return;
            }
            // カラー&サイズを選択した状態でカラーを変更した時、選択後にも同じサイズがあれば、選択したままにする
            if (sizeList != null && sizeList.any((size) => size == currentSize)) {
              await context
                  .read<ProductDetailPageViewModel>()
                  .setProductNumberObject(color: content, size: currentSize);
              return;
            }
            await context.read<ProductDetailPageViewModel>().setProductNumberObject(color: content, size: null);
          } else if (currentColor != null) {
            await context.read<ProductDetailPageViewModel>().setProductNumberObject(color: currentColor, size: content);
          }
        },
        alignment: Alignment.centerLeft,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: AppColors.blackAlpha80,
          height: 22 / 16,
        ),
        icon: Assets.icons.arrowDown.svg(),
        isExpanded: true,
        iconSize: 0.0,
        underline: const DropdownButtonHideUnderline(child: SizedBox()),
      ),
    );
  }

  String? _dropdownValue(bool isColor, List<String?>? items, String? content) {
    if (items == null) {
      return null;
    }
    if (isColor) {
      return content;
    }
    if (items.contains(content)) {
      return content;
    }
    return null;
  }
}
