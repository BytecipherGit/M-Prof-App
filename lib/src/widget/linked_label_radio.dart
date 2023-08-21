import 'package:flutter/gestures.dart';

import '../core_utils/export_dependency.dart';

class LinkedLabelRadio extends StatelessWidget {
  const LinkedLabelRadio({
    super.key,
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  final String label;

  final bool groupValue;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<bool>(
            groupValue: groupValue,
            value: value,
            activeColor: AppColors.activeTabColor,
            onChanged: (bool? newValue) {
              onChanged(newValue!);
            }),
        RichText(
          text: TextSpan(
            text: label,
            style: AppStyle.alarmTitleTextStyle.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: AppDimens.fontSize14,
                color: const Color(0xff2F3133)),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                debugPrint('Label has been tapped.');
              },
          ),
        ),
      ],
    );
  }
}
