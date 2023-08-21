import '../core_utils/export_dependency.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final String text;
  final String imageIcon;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressedFunction;
  const RoundedButtonWithIcon(
      {Key? key,
      required this.color,
      required this.textColor,
      required this.text,
      required this.onPressedFunction,
      required this.imageIcon})
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
          gradient: const LinearGradient(colors: [
            Color(0XFFEB6A5C),
            Color(0XFFFF8B7A),
          ])),
      child: MaterialButton(
        onPressed: onPressedFunction,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageIcon,
              height: AppDimens.height15,
              width: AppDimens.height15,
            ),
            SizedBox(
              width: AppDimens.width10,
            ),
            Text(
              text,
              style: AppStyle.alarmTitleTextStyle.copyWith(
                color: AppColors.whiteColor,
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
