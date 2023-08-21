import '../core_utils/export_dependency.dart';

class CustomRoundButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final IconData icon;
  final VoidCallback? onPressedFunction;
  const CustomRoundButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.borderColor,
    required this.text,
    required this.onPressedFunction,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: AppDimens.height40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor)),
      child: MaterialButton(
        onPressed: onPressedFunction,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: textColor,),
            SizedBox(
              width: AppDimens.width10,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: AppDimens.fontSize14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Gilroy-SemiBold',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
