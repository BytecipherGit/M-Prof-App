import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../widget/wave_clip.dart';

class BarberDetailsView extends StatelessWidget {
  const BarberDetailsView({super.key});

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
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    height: AppDimens.height220,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(AppImage.bar1Image),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppDimens.radius10))),
                  ),
                  SizedBox(
                    height: AppDimens.height15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "OPEN NOW",
                            style: AppStyle.vendorStatusTextStyle
                                .copyWith(fontSize: AppDimens.fontSize10),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(
                            width: AppDimens.width5,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
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
                      SizedBox(
                        child: Text(
                          "15 Km Away",
                          style: AppStyle.vendorTypeTextStyle
                              .copyWith(fontSize: AppDimens.fontSize12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Text(
                    "The Barber Shop",
                    style: AppStyle.signInTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImage.locationIcon,
                        height: AppDimens.height15,
                        width: AppDimens.height15,
                      ),
                      SizedBox(
                        width: AppDimens.width8,
                      ),
                      Text(
                        "KIAL Rd, Bengaluru, Karnataka 560300",
                        style: AppStyle.vendorTypeTextStyle.copyWith(
                            fontSize: AppDimens.fontSize12,
                            color: const Color(0XFF686868)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImage.timeIcon,
                        height: AppDimens.height15,
                        width: AppDimens.height15,
                      ),
                      SizedBox(
                        width: AppDimens.width8,
                      ),
                      Text(
                        "09:00 - 21:00",
                        style: AppStyle.vendorTypeTextStyle.copyWith(
                            fontSize: AppDimens.fontSize12,
                            color: const Color(0XFF686868)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppImage.phoneIcon,
                        height: AppDimens.height15,
                        width: AppDimens.height15,
                      ),
                      SizedBox(
                        width: AppDimens.width8,
                      ),
                      Text(
                        "+91 99999 99999",
                        style: AppStyle.vendorTypeTextStyle.copyWith(
                            fontSize: AppDimens.fontSize12,
                            color: const Color(0XFF686868)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height20,
                  ),
                  Text(
                    "Description",
                    style: AppStyle.signInTextStyle.copyWith(
                      fontSize: AppDimens.fontSize18,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: AppDimens.height10,
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
