import 'dart:developer';

import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../core_utils/export_dependency.dart';
import '../../helpers/routes/route_name.dart';
import '../../widget/new_rounded_button.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
  TextEditingController otpController = TextEditingController();
  final isCompletedProvider = false;
  final isStart = false;
  final controller = CountdownController(autoStart: true);
  static PinTheme defaultPinTheme = PinTheme(
    width: 100,
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
            color: AppColors.bgColor,
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
                              "Enter OTP".toUpperCase(),
                              style: AppStyle.signInTextStyle,
                            ),
                            RichText(
                              text: TextSpan(
                                text:
                                    'Please enter OTP which has been sent to your Phone Number ',
                                style: AppStyle.welcomeBackTextStyle,
                                children: [
                                  TextSpan(
                                    text: "'xxxxx45986'",
                                    style: AppStyle.hiddenMobileTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppDimens.height20,
                            ),
                            Text(
                              "OTP",
                              style: AppStyle.welcomeBackTextStyle
                                  .copyWith(color: const Color(0XFFADADB2)),
                            ),
                            Pinput(
                              length: 6,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              controller: otpController,
                              validator: (s) {
                                return null;
                                // return s == '123456' ? null : 'Pin is incorrect';
                              },
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) => log(pin),
                            ),
                            SizedBox(
                              height: AppDimens.height10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Resend OTP ?',
                                        style: AppStyle.resendOTPTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Countdown(
                                      controller: controller,
                                      seconds: 120,
                                      build: (BuildContext context,
                                              double time) =>
                                          time == 0
                                              ? Container()
                                              : RichText(
                                                  text: TextSpan(
                                                    text:
                                                        '0${(time ~/ 60).toInt()}:${time.remainder(60).toInt()}',
                                                    style: AppStyle
                                                        .resendOTPTextStyle,
                                                    children: [
                                                      TextSpan(
                                                          text: " Sec Left",
                                                          style: AppStyle
                                                              .resendOTPTextStyle
                                                              .copyWith(
                                                            color: const Color(
                                                                0XFF878282),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: AppDimens
                                                                .fontSize16,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                      interval: const Duration(seconds: 1),
                                      onFinished: () {},
                                    ),
                                  ],
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
                                Navigator.pushNamed(
                                    context, RouteName.mpinScreen);
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
