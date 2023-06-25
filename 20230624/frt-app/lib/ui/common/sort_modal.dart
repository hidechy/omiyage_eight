import 'package:flutter/material.dart';

import '../../enum/sort_number.dart';
import '../../gen/assets.gen.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';

class SortModal extends StatelessWidget {
  const SortModal({Key? key, required this.sortNumber, required this.onPressed}) : super(key: key);

  final SortNumber sortNumber;
  final Function(SortNumber) onPressed;

  @override
  Widget build(BuildContext context) {
    // separatorBuilderはリストの間のみ線を引くため、先頭行と最終行用に空のリストを用意している

    // enumの選択行と先頭・最後の2行を合わせて総数としている
    final itemCount = SortNumber.values.length + 2;
    return BlueTextButton(
      fontSize: 14,
      child: Text(sortNumber.name),
      onPressed: () async {
        final sortNumberReturnValue = await showAppModalBottomSheet<SortNumber>(
          context: context,
          dialogName: 'SortModal',
          title: '並び替え',
          content: Expanded(
            child: ListView.separated(
              itemCount: itemCount,
              itemBuilder: (context, index) {
                // リストの先頭・最終に空のリスト設置
                if (index == 0 || index == itemCount - 1) {
                  return const SizedBox.shrink();
                }
                final _sortNumber = SortNumber.values.elementAt(index - 1);
                return _SortButton(sortNumber: _sortNumber, enabled: _sortNumber == sortNumber);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 0.1,
                );
              },
            ),
          ),
        );
        if (sortNumberReturnValue != null) {
          onPressed.call(sortNumberReturnValue);
        }
      },
    );
  }
}

/// ソートモーダル内の選択ボタン
class _SortButton extends StatelessWidget {
  const _SortButton({
    Key? key,
    required this.sortNumber,
    required this.enabled,
  }) : super(key: key);

  final SortNumber sortNumber;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              sortNumber.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.black2,
              ),
            ),
            Visibility(
              visible: enabled,
              child: Assets.icons.checkmark.svg(),
            ),
          ],
        ),
        onTap: () async {
          Navigator.pop(context, sortNumber);
        },
      ),
    );
  }
}
