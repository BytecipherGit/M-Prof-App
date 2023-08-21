import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:m_proof/src/widget/round_button.dart';
import '../core_utils/export_dependency.dart';
import '../helpers/routes/route_name.dart';

class LogOutDialogue {
  static showDialogue(
    BuildContext context, {
    required String adminId,
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          content: Wrap(
            children: [
              Text(
                'Log Out',
                style: AppStyle.alarmTitleTextStyle.copyWith(
                    fontSize: AppDimens.fontSize16,
                    color: const Color(0xFF5E5E5E),
                    fontWeight: FontWeight.w600),
              ),
              Container(
                height: 10,
              ),
              Text(
                'Are you sure you want to Log Out ?',
                style: AppStyle.alarmTitleTextStyle.copyWith(
                    fontSize: AppDimens.fontSize14,
                    color: const Color(0xff878787),
                    fontWeight: FontWeight.w400),
              ),
              Container(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: AppDimens.width80,
                    child: MaterialButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(
                    width: AppDimens.width110,
                    height: AppDimens.height30,
                    child: RoundButton(
                      text: "Log Out",
                      onPressedFunction: () async {
                        await DefaultCacheManager().emptyCache().then((value) {
                          Navigator.pop(context);
                          return Navigator.pushNamedAndRemoveUntil(
                              context, RouteName.loginScreen, (route) => false);
                        });
                      },
                      color: const Color(0XFF6965A6),
                      textColor: AppColors.primaryColor,
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
