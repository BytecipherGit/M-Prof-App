import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../network/models/response/dummy/barber_response.dart';

class BarberDetailsView extends StatelessWidget {
  final BarberListResponse barber;

  const BarberDetailsView({
    super.key,
    required this.barber,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(AppDimens.width5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius15),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: AppDimens.height100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppDimens.radius10),
                          topRight: Radius.circular(AppDimens.radius10)),
                      image: DecorationImage(
                        image: AssetImage(
                          barber.image!,
                        ),
                        fit: BoxFit.fill,
                      )),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: Icon(
                      Icons.favorite,
                      color: barber.isFav == 1
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
                        barber.status!.toUpperCase(),
                        style: barber.status == "CLOSED"
                            ? AppStyle.vendorStatusTextStyle
                                .copyWith(color: const Color(0XFFEA0D0D))
                            : AppStyle.vendorStatusTextStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(
                        width: AppDimens.width5,
                      ),
                      Text(
                        "${barber.startTime.toString()} - ${barber.closeTime.toString()}",
                        style: AppStyle.vendorWorkingHourTextStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height5,
                  ),
                  SizedBox(
                    width: AppDimens.height110,
                    child: Text(
                      barber.name.toString(),
                      style: AppStyle.vendorNameTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height5,
                  ),
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
                          barber.location.toString(),
                          style: AppStyle.vendorTypeTextStyle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height5,
                  ),
                  RatingBar.builder(
                    initialRating: barber.rating ?? 1.0,
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