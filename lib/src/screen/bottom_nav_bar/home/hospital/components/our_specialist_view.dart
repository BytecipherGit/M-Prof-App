import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core_utils/export_dependency.dart';
import '../../../../../network/models/response/dummy/vendor_list_response.dart';

class OurSpecialistView extends StatelessWidget {
  final VendorListResponse vendor;
  const OurSpecialistView({super.key, required this.vendor});

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
            Container(
              height: AppDimens.height90,
              width: AppDimens.height140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      vendor.image!,
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppDimens.radius10),
                  )),
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            SizedBox(
              width: AppDimens.height110,
              child: Text(
                vendor.name.toString(),
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
                vendor.type.toString(),
                style: AppStyle.vendorTypeTextStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            RatingBar.builder(
              initialRating: vendor.rating ?? 1.0,
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
