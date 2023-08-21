import 'package:google_fonts/google_fonts.dart';
import '../core_utils/export_dependency.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Gradient? gradient;
  final VoidCallback? onPressedFunction;
  const RoundButton(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.text,
      required this.onPressedFunction,
      this.gradient = const LinearGradient(colors: [
        Color(0XFFEB6A5C),
        Color(0XFFFF8B7A),
      ])})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: AppDimens.height40,
      decoration: BoxDecoration(
          // color: color,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: color),
          gradient: gradient),
      child: MaterialButton(
        onPressed: onPressedFunction,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.titilliumWeb(
                color: AppColors.whiteColor,
                fontSize: AppDimens.fontSize14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
