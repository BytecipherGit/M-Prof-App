import '../../../../core_utils/export_dependency.dart';
import '../../../../network/models/response/dummy/hospital_reponse.dart';

class HospitalDetails extends StatelessWidget {
  final HospitalResponse hospital;
  const HospitalDetails({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
            left: AppDimens.width5,
            top: AppDimens.height5,
            bottom: AppDimens.height5),
        margin: EdgeInsets.only(
            right: AppDimens.width10, bottom: AppDimens.height15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radius10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: AppDimens.height90,
                  width: AppDimens.height100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          hospital.image!,
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(AppDimens.radius10),
                      )),
                ),
                Positioned(
                    top: 5,
                    left: 5,
                    child: Icon(
                      Icons.favorite,
                      color: hospital.isFav == 1
                          ? AppColors.redColor
                          : AppColors.whiteColor,
                    ))
              ],
            ),
            SizedBox(
              height: AppDimens.height5,
            ),
            Padding(
              padding: EdgeInsets.only(left: AppDimens.width10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            hospital.status!.toUpperCase(),
                            style: hospital.status == "CLOSED"
                                ? AppStyle.vendorStatusTextStyle.copyWith(
                                    color: const Color(0XFFEA0D0D),
                                    fontSize: AppDimens.fontSize12)
                                : AppStyle.vendorStatusTextStyle
                                    .copyWith(fontSize: AppDimens.fontSize12),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(
                            width: AppDimens.width5,
                          ),
                          Text(
                            "${hospital.startTime.toString()} - ${hospital.closeTime.toString()}",
                            style: AppStyle.vendorWorkingHourTextStyle
                                .copyWith(fontSize: AppDimens.fontSize12),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Text(
                        hospital.distance.toString(),
                        style: AppStyle.vendorTypeTextStyle
                            .copyWith(fontSize: AppDimens.fontSize12),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height5,
                  ),
                  SizedBox(
                    width: AppDimens.width140,
                    child: Text(
                      hospital.name.toString(),
                      style: AppStyle.vendorNameTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: AppDimens.width140,
                    child: Text(
                      hospital.type.toString(),
                      style: AppStyle.vendorTypeTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: AppDimens.height10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.phone,
                        color: AppColors.vendorTypeTextColor,
                        size: AppDimens.height12,
                      ),
                      SizedBox(
                        width: AppDimens.width140,
                        child: Text(
                          hospital.phone.toString(),
                          style: AppStyle.vendorTypeTextStyle
                              .copyWith(fontSize: AppDimens.fontSize12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppDimens.height5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: AppColors.vendorTypeTextColor,
                        size: AppDimens.height15,
                      ),
                      SizedBox(
                        width: AppDimens.width140,
                        child: Text(
                          hospital.location.toString(),
                          style: AppStyle.vendorTypeTextStyle
                              .copyWith(fontSize: AppDimens.fontSize12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
