import 'package:m_proof/src/network/models/request/auth/set_mpin_request.dart';
import 'package:m_proof/src/network/models/request/auth/signup_request.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../core_utils/export_dependency.dart';
import '../../core_utils/flush_bar_message.dart';
import '../../view_model_providers/auth/auth_provider.dart';
import '../../widget/new_rounded_button.dart';

class MpinAfterSignUpView extends StatefulWidget {
  final SignUpRequest signUpRequest;
  const MpinAfterSignUpView({super.key, required this.signUpRequest});

  @override
  State<MpinAfterSignUpView> createState() => _MpinAfterSignUpViewState();
}

class _MpinAfterSignUpViewState extends State<MpinAfterSignUpView> {
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
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Consumer<AuthProvider>(builder: (context, modal, child) {
            return Container(
                color: AppColors.bgColor,
                padding: EdgeInsets.symmetric(horizontal: AppDimens.width10),
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Setup M-Pin".toUpperCase(),
                      style: AppStyle.signInTextStyle,
                    ),
                    SizedBox(
                      height: AppDimens.height30,
                    ),
                    Text(
                      "M-Pin",
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
                          textInputAction: TextInputAction.next,
                          validator: (s) {
                            return null;
                            // return s == '123456' ? null : 'Pin is incorrect';
                          },
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onCompleted: (pin) => AppLogger.logger.d(pin),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Re-enter M-Pin",
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
                          textInputAction: TextInputAction.done,
                          validator: (s) {
                            return null;
                            // return s == '123456' ? null : 'Pin is incorrect';
                          },
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onCompleted: (pin) => AppLogger.logger.d(pin),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height250,
                    ),
                    NewRoundedButton(
                      color: AppColors.primaryColor,
                      text: "Done",
                      textColor: AppColors.whiteColor,
                      onPressedFunction: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        String mpin = mpinController.text.trim();
                        String reMpin = reMpinController.text.trim();
                        if (mpin.isEmpty || mpin.length < 4) {
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'Please enter M Pin', context: context);
                        } else if (reMpin.isEmpty || reMpin.length < 4) {
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'Please re enter M Pin',
                              context: context);
                        } else if (mpin != reMpin) {
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'M Pin does not match',
                              context: context);
                        } else {
                          SetMPinRequest request = SetMPinRequest(
                              countryCode: widget.signUpRequest.countryCode,
                              phoneNumber: widget.signUpRequest.phoneNumber,
                              mPin: mpin);
                          modal.setMPinAfterSignUp(
                              data: request, context: context);
                        }
                        // Navigator.pushNamed(
                        //     context, RouteName.locationPermissionScreen);
                      },
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                  ],
                ));
          }),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
