import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core_utils/app_dimens.dart';

class DisabledRoundButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressedFunction;
  const DisabledRoundButton(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.text,
      required this.onPressedFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: AppDimens.height40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: onPressedFunction,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.titilliumWeb(
                color: textColor,
                fontSize: AppDimens.fontSize16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
