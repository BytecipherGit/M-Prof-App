// ignore_for_file: always_use_package_imports

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:m_proof/src/core_utils/app_dimens.dart';

class TimeItemCardFromLocal extends StatelessWidget {
  final bool isSelected;
  final DateTime time;
  final Color? selectedColor;
  final Color? unSelectedColor;
  final ValueChanged<DateTime> onChange;
  const TimeItemCardFromLocal({
    super.key,
    required this.time,
    required this.onChange,
    required this.isSelected,
    this.selectedColor,
    this.unSelectedColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChange(time);
      },
      child: Container(
        margin: EdgeInsets.all(AppDimens.height8),
        decoration: BoxDecoration(
          color: isSelected
              ? selectedColor ?? Theme.of(context).primaryColor
              : unSelectedColor ?? Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.jm().format(time),
              style: TextStyle(
                color: isSelected ? Colors.white : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
