import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import '../core_utils/export_dependency.dart';

class CustomDatePicker extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final String label;
  final String hintText;
  final TextStyle labelStyle;
  final TextStyle hintTextStyle;
  final Function(String?) onSave;

  const CustomDatePicker(
      {Key? key,
      required this.controller,
      required this.focusNode,
      required this.textInputAction,
      required this.label,
      required this.hintText,
      required this.labelStyle,
      required this.hintTextStyle,
      required this.onSave})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: labelStyle,
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Select",
            fillColor: AppColors.whiteColor,
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: AppDimens.width20),
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
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (pickedDate != null) {
              if (kDebugMode) {
                print(pickedDate);
              }
              String formattedDate =
                  DateFormat('yyyy-MM-dd').format(pickedDate);
              if (kDebugMode) {
                print(formattedDate);
              }
              controller.text = formattedDate;
            } else {
              if (kDebugMode) {
                print("Date is not selected");
              }
            }
          },
        ),
      ],
    );
  }
}
