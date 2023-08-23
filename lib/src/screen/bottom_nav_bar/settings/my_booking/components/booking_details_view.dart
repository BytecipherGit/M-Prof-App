import '../../../../../core_utils/export_dependency.dart';
import '../../../../../network/models/response/dummy/booking_response.dart';

class BookingDetailsView extends StatelessWidget {
  final BookingResponse booking;

  const BookingDetailsView({
    super.key,
    required this.booking,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(AppDimens.height10),
        margin: EdgeInsets.all(AppDimens.height5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: AppDimens.width5,
                      right: AppDimens.width5,
                      top: AppDimens.height2,
                      bottom: AppDimens.height2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimens.height2),
                    color: booking.status == "SUCCESS"
                        ? const Color(0XFF22CC15)
                        : booking.status == "PENDING"
                            ? const Color(0XFFFFB900)
                            : const Color(0XFFFF3300),
                  ),
                  child: Text(
                    booking.status!.toUpperCase(),
                    style: AppStyle.bookingStatusTextTextStyle.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimens.height3,
                ),
                SizedBox(
                  width: AppDimens.height110,
                  child: Text(
                    booking.name.toString(),
                    style: AppStyle.vendorNameTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: AppDimens.height3,
                ),
                Text(
                  "${booking.startTime.toString()} - ${booking.endTime.toString()} Monday - 12 March 2023",
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize10,
                      color: const Color(0XFF686868)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height3,
                ),
                Text(
                  booking.service.toString(),
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize10,
                      color: const Color(0XFF686868)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
                        booking.location.toString(),
                        style: AppStyle.vendorTypeTextStyle
                            .copyWith(color: const Color(0XFF686868)),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
