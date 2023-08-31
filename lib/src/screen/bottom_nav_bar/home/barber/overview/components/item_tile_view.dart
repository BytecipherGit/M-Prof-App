import '../../../../../../core_utils/export_dependency.dart';
import '../../../../../../widget/new_rounded_button.dart';

class ItemTileView extends StatelessWidget {
  const ItemTileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: AppDimens.width10),
        padding: EdgeInsets.symmetric(vertical: AppDimens.height5,horizontal: AppDimens.width5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius5),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: AppDimens.width5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: AppDimens.height110,
                        child: Text(
                          "Haircut for Men",
                          style: AppStyle.vendorNameTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: AppDimens.height5,
                      ),
                      Text(
                        "30 min",
                        style: AppStyle.vendorWorkingHourTextStyle
                            .copyWith(fontSize: AppDimens.fontSize10),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: AppDimens.height5,
                      ),
                      Text(
                        "Service Details",
                        style: AppStyle.vendorTypeTextStyle.copyWith(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: AppDimens.width110,
              height: AppDimens.height35,
              child: NewRoundedButton(
                color: AppColors.whiteColor,
                borderColor: AppColors.borderColor,
                text: "Remove",
                textColor: AppColors.blackColor,
                onPressedFunction: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
