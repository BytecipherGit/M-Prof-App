import 'package:country_list_pick/country_list_pick.dart';
import 'package:m_proof/src/helpers/routes/route_name.dart';

import '../../core_utils/export_dependency.dart';
import '../../widget/custom_phone_text_form_field.dart';
import '../../widget/new_rounded_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phoneController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();

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
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimens.width15,
                        vertical: AppDimens.height15),
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
                          "Welcome Back !!",
                          style: AppStyle.welcomeBackTextStyle,
                        ),
                        Text(
                          "Sign In".toUpperCase(),
                          style: AppStyle.signInTextStyle,
                        ),
                        SizedBox(
                          height: AppDimens.height10,
                        ),
                        Text(
                          "Phone Number",
                          style: AppStyle.welcomeBackTextStyle,
                        ),
                        // Container(
                        //     alignment: Alignment.center,
                        //     child: IntlPhoneField(
                        //       disableLengthCheck: false,
                        //       inputFormatters: [
                        //         FilteringTextInputFormatter.digitsOnly,
                        //       ],
                        //       controller: phoneController,
                        //       focusNode: phoneFocusNode,
                        //       textInputAction: TextInputAction.next,
                        //       decoration: InputDecoration(
                        //         hintText: "Enter Phone Number",
                        //         fillColor: AppColors.whiteColor,
                        //         filled: true,
                        //         contentPadding: EdgeInsets.symmetric(
                        //             horizontal: AppDimens.width20),
                        //         disabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(
                        //               AppDimens.radius10),
                        //           borderSide: BorderSide(
                        //             color: AppColors.borderColor,
                        //           ),
                        //         ),
                        //         enabledBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(
                        //               AppDimens.radius10),
                        //           borderSide: BorderSide(
                        //             color: AppColors.borderColor,
                        //           ),
                        //         ),
                        //         focusedErrorBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(
                        //               AppDimens.radius10),
                        //           borderSide: BorderSide(
                        //             color: AppColors.borderColor,
                        //           ),
                        //         ),
                        //         errorBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(
                        //               AppDimens.radius10),
                        //           borderSide: BorderSide(
                        //             color: AppColors.redColor,
                        //           ),
                        //         ),
                        //         focusedBorder: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(
                        //               AppDimens.radius10),
                        //           borderSide: BorderSide(
                        //             color: AppColors.borderColor,
                        //           ),
                        //         ),
                        //         focusColor: AppColors.borderColor,
                        //       ),
                        //       keyboardType: TextInputType.number,
                        //       dropdownIconPosition: IconPosition.trailing,
                        //       flagsButtonPadding:
                        //           EdgeInsets.only(left: AppDimens.width5),
                        //       showCountryFlag: true,
                        //       initialCountryCode: 'IN',
                        //       onSubmitted: (String? value) {
                        //         // on keyboard done tap
                        //       },
                        //       onChanged: (PhoneNumber? phone) {
                        //         if (phone != null) {}
                        //       },
                        //       onCountryChanged: (country) {
                        //         phoneController.clear();
                        //       },
                        //     )),
                        CustomPhoneTextFormFieldWithPrefixIcon(
                          focusNode: phoneFocusNode,
                          hintText: "Enter Phone Number",
                          controller: phoneController,
                          keyboardType: TextInputType.number,
                          onChanged: (CountryCode? code) {
                            AppLogger.logger.d(code!.name);
                            AppLogger.logger.d(code.code);
                            AppLogger.logger.d(code.dialCode);
                            AppLogger.logger.d(code.flagUri);
                          },
                        ),
                        SizedBox(
                          height: AppDimens.height10,
                        ),
                        NewRoundedButton(
                          color: AppColors.primaryColor,
                          text: "LogIn",
                          textColor: AppColors.whiteColor,
                          onPressedFunction: () {
                            Navigator.pushNamed(context, RouteName.otpScreen);
                          },
                        ),
                        SizedBox(
                          height: AppDimens.height20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: AppColors.dividerColor,
                                thickness: 1,
                                indent: 40,
                                endIndent: 10,
                              ),
                            ),
                            const Text("or"),
                            Expanded(
                                child: Divider(
                              color: AppColors.dividerColor,
                              thickness: 1,
                              indent: 10,
                              endIndent: 40,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: AppDimens.height20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account ? ",
                              style: AppStyle.doNotHaveAccountTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteName.signUpScreen);
                              },
                              child: Text(
                                "Sign Up",
                                style: AppStyle.signUpTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
