import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:m_proof/src/helpers/routes/route_name.dart';
import 'package:m_proof/src/view_model_providers/home_vm/home_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../widget/new_rounded_button.dart';
import '../../near_by/near_by_view.dart';
import 'components/our_specialist_view.dart';
import 'components/review_list.dart';
import 'components/specialisations_list_view.dart';

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
              padding: EdgeInsets.symmetric(horizontal: AppDimens.width10),
              child: Consumer<HomeProviderVm>(builder: (context, modal, _) {
                return ListView(
                  physics: const ClampingScrollPhysics(),
                  children: [
                    SizedBox(
                      height: AppDimens.height20,
                    ),
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
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.",
                      style: AppStyle.barberTitleTextTextStyle,
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Working Hours",
                      style: AppStyle.signInTextStyle.copyWith(
                        fontSize: AppDimens.fontSize18,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tuesday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wednesday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Thursday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Friday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saturday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "10:00 AM - 10:00 PM",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sunday",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                        Text(
                          "Closed",
                          style: AppStyle.barberTitleTextTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Our Specialist",
                          style: AppStyle.categoryTextStyle
                              .copyWith(color: const Color(0XFF09131E)),
                        ),
                        Text(
                          "See All",
                          style: AppStyle.seeAllTextStyle
                              .copyWith(color: const Color(0XFF686868)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    SizedBox(
                      height: AppDimens.height150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: modal.vendorList!.length,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            var data = modal.vendorList![index];
                            return OurSpecialistView(vendor: data);
                          }),
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Specialisations",
                          style: AppStyle.categoryTextStyle
                              .copyWith(color: const Color(0XFF09131E)),
                        ),
                        Text(
                          "See All",
                          style: AppStyle.seeAllTextStyle
                              .copyWith(color: const Color(0XFF686868)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    SizedBox(
                      height: AppDimens.height100,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: modal.specialisationsList!.length,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            var data = modal.specialisationsList![index];
                            return SpecialisationsListView(
                                specialisations: data);
                          }),
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Add your review",
                      style: AppStyle.categoryTextStyle
                          .copyWith(color: const Color(0XFF09131E)),
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    NearByListTile(
                      image: AppImage.commentIcon,
                      title: "Add Review",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Review",
                      style: AppStyle.categoryTextStyle
                          .copyWith(color: const Color(0XFF09131E)),
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: modal.reviewList!.length,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          var data = modal.reviewList![index];
                          return ReviewCard(
                            reviewList: data,
                            homeProviderVm: modal,
                          );
                        }),
                    SizedBox(
                      height: AppDimens.height20,
                    ),
                    Text(
                      "Location on Map",
                      style: AppStyle.categoryTextStyle
                          .copyWith(color: const Color(0XFF09131E)),
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    Container(
                      height: AppDimens.height150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(AppDimens.radius10),
                      )),
                      child: Image.asset(
                        AppImage.mapImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: AppDimens.height10,
                    ),
                    NewRoundedButton(
                      color: AppColors.primaryColor,
                      text: "Book Appointment",
                      textColor: AppColors.whiteColor,
                      onPressedFunction: () {
                        Navigator.pushNamed(context, RouteName.barberMenuListScreen);
                      },
                    ),
                  ],
                );
              })),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
