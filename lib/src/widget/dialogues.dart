import 'package:google_fonts/google_fonts.dart';
import 'package:m_proof/src/widget/new_rounded_button.dart';
import '../core_utils/export_dependency.dart';
import '../helpers/routes/route_name.dart';
import '../local_cache/preference_utils.dart';

class LogOutDialogue {
  static showDialogue(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          contentPadding: EdgeInsets.only(
              left: AppDimens.width10,
              top: AppDimens.height10,
              bottom: AppDimens.height10),
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(AppDimens.radius10))),
          content: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              Center(
                child: Text(
                  'Log Out',
                  style: GoogleFonts.poppins(
                      fontSize: AppDimens.fontSize16,
                      color: const Color(0xFF5E5E5E),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: AppDimens.height10,
              ),
              Center(
                child: Text(
                  'Are you sure you want to Log Out ?',
                  style: GoogleFonts.poppins(
                      fontSize: AppDimens.fontSize14,
                      color: const Color(0xff878787),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                height: AppDimens.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: AppDimens.width100,
                    height: AppDimens.height30,
                    child: MaterialButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.pop(dialogContext);
                      },
                    ),
                  ),
                  SizedBox(
                    width: AppDimens.width100,
                    height: AppDimens.height30,
                    child: NewRoundedButton(
                      text: "Log Out",
                      onPressedFunction: () {
                        PreferenceUtils.clearPreferences();
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, RouteName.loginScreen, (route) => false);
                      },
                      color: AppColors.primaryColor,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
