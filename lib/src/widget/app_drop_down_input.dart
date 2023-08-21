import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core_utils/app_colors.dart';
import '../core_utils/app_dimens.dart';


class AppDropdownInput<T> extends StatelessWidget {
  final String hintText;
  final String label;
  final List<T> options;
  final T value;
  final TextStyle labelStyle;
  final String Function(T) getLabel;
  final void Function(T?) onChanged;

  const AppDropdownInput({
    super.key,
    this.hintText = 'Please select an Option',
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
    required this.label,
    required this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle,
        ),
        FormField<T>(
          builder: (FormFieldState<T> state) {
            return InputDecorator(
              decoration: InputDecoration(
                hintText: hintText,
                fillColor: AppColors.whiteColor,
                hintStyle: GoogleFonts.titilliumWeb(
                  fontWeight: FontWeight.w600,
                  fontSize: AppDimens.fontSize14,
                ),
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: AppDimens.width20,
                    vertical: AppDimens.height10),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radius10),
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radius10),
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radius10),
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radius10),
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radius10),
                  borderSide: BorderSide(
                    color: AppColors.whiteColor,
                  ),
                ),
                focusColor: AppColors.whiteColor,
              ),
              isEmpty: value == null || value == '',
              child: DropdownButtonHideUnderline(
                child: DropdownButton<T>(
                  hint: const Text("Please select an Option"),
                  value: value,
                  isDense: true,
                  onChanged: onChanged,
                  items: options.map((T value) {
                    return DropdownMenuItem<T>(
                      value: value,
                      child: Text(
                        getLabel(value),
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
