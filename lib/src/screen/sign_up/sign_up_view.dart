import 'package:country_list_pick/country_list_pick.dart';
import 'package:email_validator/email_validator.dart';
import 'package:m_proof/src/widget/form_filed_with_label.dart';
import 'package:provider/provider.dart';

import '../../core_utils/export_dependency.dart';
import '../../core_utils/flush_bar_message.dart';
import '../../network/models/request/auth/signup_request.dart';
import '../../view_model_providers/auth/auth_provider.dart';
import '../../widget/custom_phone_text_form_field.dart';
import '../../widget/new_rounded_button.dart';

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
                        modal.setCountryCode(code!.dialCode ?? "+91");
                        AppLogger.logger.d(code.name);
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
                      height: AppDimens.height200,
                    ),
                    NewRoundedButton(
                      color: AppColors.primaryColor,
                      text: "Done",
                      textColor: AppColors.whiteColor,
                      onPressedFunction: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        var email = emailController.text.trim();
                        var name = nameController.text.trim();
                        var countryCode = modal.countryCode;
                        var phoneNumber = phoneController.text.trim();
                        AppLogger.logger.d(phoneNumber);

                        if (name.isEmpty) {
                          nameFocusNode.requestFocus();
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'Please entre full name',
                              context: context);
                        } else if (email.isEmpty) {
                          emailFocusNode.requestFocus();
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'Please enter email', context: context);
                        } else if (!EmailValidator.validate(email)) {
                          emailFocusNode.requestFocus();
                          FlushBarMessage.flushBarTopErrorMessage(
                              message: 'Please enter valid email',
                              context: context);
                        } else if (phoneNumber.length < 10) {
                          FlushBarMessage.flushBarTopErrorMessage(
                              message:
                                  'Phone number needs to be greater than 10 digit',
                              context: context);
                        } else {
                          FocusScope.of(context).unfocus();
                          SignUpRequest request = SignUpRequest(
                              email: email,
                              name: name,
                              countryCode: countryCode,
                              phoneNumber: phoneNumber);
                          modal.registerApi(data: request, context: context);
                        }
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
