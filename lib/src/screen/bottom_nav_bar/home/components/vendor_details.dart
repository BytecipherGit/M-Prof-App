import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../network/models/response/dashboard/dashboard_response.dart';
import '../../../../view_model_providers/favorite_vm/favorite_view_model.dart';
import '../../../../view_model_providers/home_vm/home_view_model.dart';

class VendorDetails extends StatelessWidget {
  final Doctor doctor;

  final FavoriteProviderVm favoriteProviderVm;
  final HomeProviderVm homeProviderVm;
  const VendorDetails(
      {super.key,
      required this.doctor,
      required this.favoriteProviderVm,
      required this.homeProviderVm});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(AppDimens.width5),
        margin: EdgeInsets.only(right: AppDimens.width10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Container(
                //   height: AppDimens.height90,
                //   width: AppDimens.height140,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage(
                //           doctor.image!,
                //         ),
                //         fit: BoxFit.fill,
                //       ),
                //       borderRadius: BorderRadius.all(
                //         Radius.circular(AppDimens.radius10),
                //       )),
                // ),
                CachedNetworkImage(
                  imageUrl: doctor.image == null ? "" : doctor.image ?? "",
                  placeholder: (context, url) => LinearProgressIndicator(
                    color: AppColors.primaryColor,
                    backgroundColor: AppColors.whiteColor,
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppDimens.radius10),
                        )),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppImage.dr1Image),
                  height: AppDimens.height90,
                  width: AppDimens.width130,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {
                        favoriteProviderVm.setAsFavoriteApi(
                            profId: doctor.id!, context: context);
                        homeProviderVm.fetchDashBoardApi();
                      },
                      child: Icon(
                        Icons.favorite,
                        color: doctor.isFavorite == 1
                            ? AppColors.redColor
                            : AppColors.whiteColor,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor.status == 0 ? "CLOSED" : "OPEN NOW",
                  style: doctor.status == 0
                      ? AppStyle.vendorStatusTextStyle.copyWith(
                          color: const Color(0XFFEA0D0D),
                          fontSize: AppDimens.fontSize8)
                      : AppStyle.vendorStatusTextStyle
                          .copyWith(fontSize: AppDimens.fontSize8),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  width: AppDimens.width5,
                ),
                Text(
                  "${doctor.startTime.toString()} - ${doctor.endTime.toString()}",
                  style: AppStyle.vendorWorkingHourTextStyle
                      .copyWith(fontSize: AppDimens.fontSize8),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(
              height: AppDimens.height3,
            ),
            SizedBox(
              width: AppDimens.height110,
              child: Text(
                doctor.title.toString(),
                style: AppStyle.vendorNameTextStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: AppDimens.height3,
            ),
            SizedBox(
              width: AppDimens.width100,
              child: Text(
                doctor.profName.toString(),
                style: AppStyle.vendorTypeTextStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            RatingBar.builder(
              initialRating: double.parse(doctor.averageRate ?? "1.0"),
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemPadding: EdgeInsets.zero,
              itemCount: 5,
              updateOnDrag: false,
              glow: false,
              ignoreGestures: true,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                AppLogger.logger.d(rating);
              },
              itemSize: 14.0,
            )
          ],
        ),
      ),
    );
  }
}
