import '../core_utils/export_dependency.dart';

class NetworkErrorDialog extends StatelessWidget {
  const NetworkErrorDialog({Key? key, this.onPressed}) : super(key: key);

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: AppDimens.width130,
              height: AppDimens.height150,
              child: Image.asset('assets/images/no-connection.png')),
          SizedBox(height: AppDimens.height20),
          Text(
            "Whoops!",
            style: AppStyle.appBarTitleTextStyle.copyWith(
                fontSize: AppDimens.fontSize16, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppDimens.height15),
          Text(
            "No internet connection found.",
            style: AppStyle.appBarTitleTextStyle.copyWith(
                fontSize: AppDimens.fontSize14, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppDimens.height8),
          Text(
            "Check your connection and try again.",
            style: AppStyle.appBarTitleTextStyle
                .copyWith(fontSize: AppDimens.fontSize12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppDimens.height15),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text("Try Again"),
          )
        ],
      ),
    );
  }
}
