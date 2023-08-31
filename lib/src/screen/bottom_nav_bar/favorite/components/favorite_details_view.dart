import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../core_utils/export_dependency.dart';
import '../../../../network/models/response/favorite/favorite_response.dart';

class FavoriteDetailsView extends StatelessWidget {
  final Favorite favorite;

  const FavoriteDetailsView({
    super.key,
    required this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                  imageUrl: favorite.image == null ? "" : favorite.image ?? "",
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
                          topRight: Radius.circular(AppDimens.radius10),
                        )),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppImage.dr1Image),
                  height: AppDimens.height90,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(
                      Icons.favorite,
                      color: favorite.isFavorite == 1
                          ? AppColors.redColor
                          : AppColors.whiteColor,
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
                    children: [
                      Text(
                        favorite.status == 0 ? "CLOSED" : "OPEN NOW",
                        style: favorite.status == 0
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
                        "${favorite.startTime.toString()} - ${favorite.endTime.toString()}",
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
                      favorite.profName.toString(),
                      style: AppStyle.vendorNameTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height3,
                  ),
                  if (favorite.category != "Doctor")
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: AppColors.vendorTypeTextColor,
                            size: AppDimens.height15,
                          ),
                          Text(
                            favorite.location.toString(),
                            style: AppStyle.vendorTypeTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  if (favorite.category == "Doctor")
                    Text(
                      favorite.title.toString(),
                      style: AppStyle.vendorTypeTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  SizedBox(
                    height: AppDimens.height3,
                  ),
                  RatingBar.builder(
                    initialRating: favorite.averageRate ?? 1.0,
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
