import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core_utils/app_colors.dart';
import '../core_utils/app_dimens.dart';

class CustomPhoneTextFormFieldWithPrefixIcon extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? icon;
  final Color? color;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final int? maxLength;
  final VoidCallback? callBackFunction;
  final void Function(CountryCode?)? onChanged;
  const CustomPhoneTextFormFieldWithPrefixIcon(
      {Key? key,
      this.controller,
      this.color,
      this.hintText,
      this.icon,
      this.keyboardType,
      this.callBackFunction,
      this.onChanged,
      this.textInputAction,
      this.maxLength = 30,
      required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.height50,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        enableInteractiveSelection: true,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
        ],
        textInputAction: textInputAction,
        decoration: InputDecoration(
          fillColor: AppColors.whiteColor,
          filled: true,
          hintText: hintText,
          prefixIcon: Container(
              margin: EdgeInsets.only(
                  right: AppDimens.width10,
                  top: AppDimens.height8,
                  bottom: AppDimens.height8),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: AppColors.dividerColor,
                    width: 1,
                  ),
                ),
              ),
              child: CountryListPick(
                  appBar: AppBar(
                    backgroundColor: Colors.blue,
                    title: const Text('Choose Country'),
                  ),
                  theme: CountryTheme(
                    isShowFlag: true,
                    isShowTitle: false,
                    isShowCode: false,
                    isDownIcon: true,
                    showEnglishName: true,
                  ),
                  initialSelection: '+91',
                  onChanged: onChanged,
                  // Whether to allow the widget to set a custom UI overlay
                  useUiOverlay: true,
                  // Whether the country list should be wrapped in a SafeArea
                  useSafeArea: false)),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          contentPadding: EdgeInsets.all(AppDimens.height10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColors.borderColor,
            ),
          ),
          focusColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
