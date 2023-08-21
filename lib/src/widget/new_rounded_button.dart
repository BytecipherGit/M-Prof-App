import '../core_utils/export_dependency.dart';

class NewRoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressedFunction;
  const NewRoundedButton(
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
      height: AppDimens.height45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppDimens.radius10),
        // border: Border.all(color: color),
      ),
      child: MaterialButton(
        onPressed: onPressedFunction,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
