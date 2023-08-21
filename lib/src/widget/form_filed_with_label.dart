import 'package:flutter/services.dart';

import '../core_utils/export_dependency.dart';

class FormFieldWithLabel extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final String label;
  final String hintText;
  final int maxLine;
  final int maxLength;
  final TextStyle labelStyle;
  final bool enabled;
  final bool isNumber;
  final TextStyle hintTextStyle;
  final TextInputType? keyboardType;

  final Function(String?) onSave;
  final Function(String?)? onFieldSubmitted;
  const FormFieldWithLabel(
      {Key? key,
      required this.controller,
      required this.label,
      required this.hintText,
      this.maxLine = 1,
      required this.maxLength,
      required this.labelStyle,
      required this.hintTextStyle,
      required this.onSave,
      required this.focusNode,
      required this.textInputAction,
      this.enabled = true,
      this.onFieldSubmitted,
      required this.keyboardType,
      this.isNumber = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle,
        ),
        SizedBox(
          height: AppDimens.height50,
          child: TextFormField(
            enabled: enabled,
            maxLines: maxLine,
            onSaved: onSave,
            onFieldSubmitted: onFieldSubmitted,
            keyboardType: keyboardType,
            enableInteractiveSelection: false,
            inputFormatters: [
              NoInitialSpaceInputFormatter(),
              LengthLimitingTextInputFormatter(maxLength),
              if (isNumber) FilteringTextInputFormatter.digitsOnly,
              if (isNumber) DecimalTextInputFormatter(),
            ],
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: enabled
                  ? AppColors.whiteColor
                  : AppColors.greyColor.withOpacity(0.2),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: AppDimens.width20, vertical: AppDimens.height16),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimens.radius10),
                borderSide: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimens.radius10),
                borderSide: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimens.radius10),
                borderSide: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimens.radius10),
                borderSide: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimens.radius10),
                borderSide: BorderSide(
                  color: AppColors.borderColor,
                ),
              ),
              focusColor: AppColors.whiteColor,
            ),
            controller: controller,
            focusNode: focusNode,
            textInputAction: textInputAction,
          ),
        ),
      ],
    );
  }
}

class NoInitialSpaceInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Prevent entering a space as the initial character
    if (newValue.text.startsWith(' ')) {
      return oldValue;
    }
    return newValue;
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regEx = RegExp(r"^\d*\.?\d*");
    String newString = regEx.stringMatch(newValue.text) ?? "";
    return newString == newValue.text ? newValue : oldValue;
  }
}
