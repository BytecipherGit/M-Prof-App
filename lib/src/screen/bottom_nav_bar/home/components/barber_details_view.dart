import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:m_proof/src/view_model_providers/favorite_vm/favorite_view_model.dart';
import 'package:m_proof/src/view_model_providers/home_vm/home_view_model.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../helpers/routes/route_name.dart';
import '../../../../network/models/response/dashboard/dashboard_response.dart';

class BarberDetailsView extends StatelessWidget {
  final Barber barber;
  final FavoriteProviderVm favoriteProviderVm;
  final HomeProviderVm homeProviderVm;
  const BarberDetailsView({
    super.key,
    required this.barber,
    required this.favoriteProviderVm,
    required this.homeProviderVm,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteName.barberDetailsScreen);
      },
      child: Container(
        margin: EdgeInsets.all(AppDimens.width8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: barber.image == null ? "" : barber.image ?? "",
                  placeholder: (context, url) => LinearProgressIndicator(
                    color: AppColors.primaryColor,
                    backgroundColor: AppColors.whiteColor,
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppDimens.radius10),
                          topRight: Radius.circular(AppDimens.radius10)),
                    ),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppImage.bar1Image),
                  height: AppDimens.height90,
                  width: AppDimens.width150,
                  fit: BoxFit.fill,
                ),
                // Container(
                //   height: AppDimens.height110,
                //   width: double.maxFinite,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(AppDimens.radius10),
                //           topRight: Radius.circular(AppDimens.radius10)),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           barber.image!,
                //         ),
                //         fit: BoxFit.fill,
                //       )),
                // ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: GestureDetector(
                      onTap: () {
                        favoriteProviderVm.setAsFavoriteApi(
                            profId: barber.id!, context: context);
                        homeProviderVm.fetchDashBoardApi();
                      },
                      child: Icon(
                        Icons.favorite,
                        color: barber.isFavorite == 1
                            ? AppColors.redColor
                            : AppColors.whiteColor,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            Padding(
              padding: EdgeInsets.only(left: AppDimens.width5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        barber.status == 0 ? "CLOSED" : "OPEN NOW",
                        style: barber.status == 0
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
                        "${barber.startTime.toString().trim()} - ${barber.endTime.toString().trim()}",
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
                      barber.profName.toString(),
                      style: AppStyle.vendorNameTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height3,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Image.asset(
                          AppImage.locationIcon,
                          height: AppDimens.height10,
                        ),
                        SizedBox(
                          width: AppDimens.height3,
                        ),
                        Text(
                          barber.address.toString(),
                          style: AppStyle.vendorTypeTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height3,
                  ),
                  RatingBar.builder(
                    initialRating: barber.averageRate ?? 1.0,
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
          ],
        ),
      ),
    );
  }
}
