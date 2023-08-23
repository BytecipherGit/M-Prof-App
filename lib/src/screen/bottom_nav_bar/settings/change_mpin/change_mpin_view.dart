import 'package:pinput/pinput.dart';
import '../../../../core_utils/export_dependency.dart';
import '../../../../widget/new_rounded_button.dart';
import '../../../../widget/wave_clip.dart';

class ChangeMPinView extends StatefulWidget {
  const ChangeMPinView({super.key});

  @override
  State<ChangeMPinView> createState() => _ChangeMPinViewState();
}

class _ChangeMPinViewState extends State<ChangeMPinView> {
  TextEditingController currentMpinController = TextEditingController();
  TextEditingController mpinController = TextEditingController();
  TextEditingController reMpinController = TextEditingController();
  static PinTheme defaultPinTheme = PinTheme(
    width: 55,
    height: 55,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: const Color(0XFFD2CFCF), width: 2),
      borderRadius: BorderRadius.circular(7),
    ),
  );
  final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    border: Border.all(color: const Color(0XFFD2CFCF)),
  );

  final submittedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      color: Colors.white,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Change M-PIN",
          style: AppStyle.appBarTitleTextStyle,
        ),
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
              color: AppColors.bgColor,
              padding: EdgeInsets.symmetric(
                  vertical: AppDimens.height20, horizontal: AppDimens.width10),
              child: ListView(
                children: [
                  Text(
                    "Enter your Login PIN",
                    style: AppStyle.signInTextStyle,
                  ),
                  SizedBox(
                    height: AppDimens.height30,
                  ),
                  Text(
                    "Current M-Pin",
                    style: AppStyle.welcomeBackTextStyle
                        .copyWith(color: const Color(0XFFADADB2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        controller: currentMpinController,
                        validator: (s) {
                          return null;
                          // return s == '123456' ? null : 'Pin is incorrect';
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) => AppLogger.logger.d(pin),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  Text(
                    "New M-Pin",
                    style: AppStyle.welcomeBackTextStyle
                        .copyWith(color: const Color(0XFFADADB2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        controller: mpinController,
                        validator: (s) {
                          return null;
                          // return s == '123456' ? null : 'Pin is incorrect';
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) => AppLogger.logger.d(pin),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  Text(
                    "Confirm M-Pin",
                    style: AppStyle.welcomeBackTextStyle
                        .copyWith(color: const Color(0XFFADADB2)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        controller: reMpinController,
                        validator: (s) {
                          return null;
                          // return s == '123456' ? null : 'Pin is incorrect';
                        },
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) => AppLogger.logger.d(pin),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height240,
                  ),
                  NewRoundedButton(
                    color: AppColors.primaryColor,
                    text: "Done",
                    textColor: AppColors.whiteColor,
                    onPressedFunction: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
