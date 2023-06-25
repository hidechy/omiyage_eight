import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../enum/category_type.dart';
import '../../../enum/liquor_type.dart';
import '../../common/compliance_warning_labels.dart';
import '../../state/product_detail_page_state.dart';

class AlcoholAnnotation extends StatelessWidget {
  const AlcoholAnnotation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAlcohol = context
        .select((ProductDetailPageState state) => state.productDetailModel.product.liquorType == LiquorType.alcohol);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ComplianceWarningLabels(
        categoryType: isAlcohol ? CategoryType.alcohol : CategoryType.other,
      ),
    );
  }
}
