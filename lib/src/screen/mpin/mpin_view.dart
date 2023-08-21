import 'package:m_proof/src/helpers/routes/route_name.dart';
import 'package:pinput/pinput.dart';
import '../../core_utils/export_dependency.dart';
import '../../widget/new_rounded_button.dart';

class MPinView extends StatefulWidget {
  const MPinView({super.key});

  @override
  State<MPinView> createState() => _MPinViewState();
}

class _MPinViewState extends State<MPinView> {
  TextEditingController mpinController = TextEditingController();
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
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppImage.bgImage,
                ),
                fit: BoxFit.fill),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: AppDimens.width10,
                      right: AppDimens.width10,
                      bottom: AppDimens.height40),
                  decoration: BoxDecoration(
                      color: AppColors.bgColor,
                      borderRadius:
                          BorderRadius.all(Radius.circular(AppDimens.width20))),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppDimens.width20),
                              topRight: Radius.circular(AppDimens.width20))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppDimens.width15,
                            vertical: AppDimens.width10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                AppImage.appLogo,
                                height: AppDimens.height80,
                                width: AppDimens.height80,
                              ),
                            ),
                            SizedBox(
                              height: AppDimens.height35,
                            ),
                            Text(
                              "Enter Your M-pin".toUpperCase(),
                              style: AppStyle.signInTextStyle,
                            ),
                            SizedBox(
                              height: AppDimens.height20,
                            ),
                            Text(
                              "M-pin",
                              style: AppStyle.welcomeBackTextStyle
                                  .copyWith(color: const Color(0XFFADADB2)),
                            ),
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
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) => AppLogger.logger.d(pin),
                            ),
                            SizedBox(
                              height: AppDimens.height10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Forget M-PIN ?',
                                    style: AppStyle.resendOTPTextStyle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppDimens.height30,
                            ),
                            NewRoundedButton(
                              color: AppColors.primaryColor,
                              text: "Done",
                              textColor: AppColors.whiteColor,
                              onPressedFunction: () {
                                Navigator.pushNamedAndRemoveUntil(context, RouteName.bottomNavBar, (route) => false);
                              },
                            ),
                            SizedBox(
                              height: AppDimens.height10,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
