import 'package:country_list_pick/country_list_pick.dart';
import 'package:m_proof/src/widget/form_filed_with_label.dart';

import '../../core_utils/export_dependency.dart';
import '../../helpers/routes/route_name.dart';
import '../../widget/custom_phone_text_form_field.dart';
import '../../widget/new_rounded_button.dart';
import '../../widget/wave_clip.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
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
          Container(
              color: AppColors.bgColor,
              padding: EdgeInsets.symmetric(
                  vertical: AppDimens.height20, horizontal: AppDimens.width10),
              child: ListView(
                children: [
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  Text(
                    "Sign Up".toUpperCase(),
                    style: AppStyle.signInTextStyle,
                  ),
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  FormFieldWithLabel(
                      controller: nameController,
                      label: "Full Name",
                      hintText: "Enter Full Name",
                      maxLength: 30,
                      labelStyle: AppStyle.welcomeBackTextStyle,
                      hintTextStyle: AppStyle.hintTextStyle,
                      onSave: (String? value) {},
                      focusNode: nameFocusNode,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.text),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Text(
                    "Phone Number",
                    style: AppStyle.welcomeBackTextStyle,
                  ),
                  CustomPhoneTextFormFieldWithPrefixIcon(
                    focusNode: phoneFocusNode,
                    hintText: "Enter Phone Number",
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
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
                  FormFieldWithLabel(
                      controller: emailController,
                      label: "Email",
                      hintText: "Enter Email",
                      maxLength: 50,
                      labelStyle: AppStyle.welcomeBackTextStyle,
                      hintTextStyle: AppStyle.hintTextStyle,
                      onSave: (String? value) {},
                      focusNode: emailFocusNode,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: AppDimens.height220,
                  ),
                  NewRoundedButton(
                    color: AppColors.primaryColor,
                    text: "Done",
                    textColor: AppColors.whiteColor,
                    onPressedFunction: () {
                      Navigator.pushNamed(
                          context, RouteName.otpAfterSignUpScreen);
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
