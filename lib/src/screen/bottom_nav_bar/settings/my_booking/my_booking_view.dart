import 'package:provider/provider.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../view_model_providers/booking_vm/booking_view_model.dart';
import '../../../../widget/wave_clip.dart';
import 'components/booking_details_view.dart';

class MyBookingView extends StatefulWidget {
  const MyBookingView({super.key});

  @override
  State<MyBookingView> createState() => _MyBookingViewState();
}

class _MyBookingViewState extends State<MyBookingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "My Booking",
          style: AppStyle.appBarTitleTextStyle,
        ),
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppDimens.width20),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0.0,
              fillColor: const Color(0XFF292929),
              padding: EdgeInsets.all(AppDimens.height5),
              shape: const CircleBorder(),
              constraints: BoxConstraints(
                  minWidth: AppDimens.width10, minHeight: AppDimens.height10),
              child: Icon(
                Icons.search,
                size: AppDimens.height18,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          DefaultTabController(
            length: 4,
            child: Scaffold(
                body: Consumer<BookingProviderVm>(builder: (context, modal, _) {
              return Column(
                children: [
                  Container(
                    height: AppDimens.height50,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.all(
                            width: 1,
                            color: const Color(0XFFE4E4E4),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppDimens.radius20),
                            topRight: Radius.circular(AppDimens.radius20))),
                    child: TabBar(
                      labelColor: const Color(0XFF292929),
                      labelStyle: AppStyle.labelTitleTextStyle,
                      unselectedLabelColor: const Color(0XFFBFBCBC),
                      indicatorColor: const Color(0XFF292929),
                      indicatorWeight: 4,
                      tabs: const [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Success',
                        ),
                        Tab(
                          text: 'Pending',
                        ),
                        Tab(
                          text: 'Failed',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      SizedBox(
                        child: ListView.builder(
                          itemCount: modal.bookingList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width10,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.bookingList![index];
                            return BookingDetailsView(
                              booking: data,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        child: ListView.builder(
                          itemCount: modal.bookingList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width10,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.bookingList![index];
                            if (data.status == "SUCCESS") {
                              return BookingDetailsView(
                                booking: data,
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                      SizedBox(
                        child: ListView.builder(
                          itemCount: modal.bookingList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width10,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.bookingList![index];
                            if (data.status == "PENDING") {
                              return BookingDetailsView(
                                booking: data,
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                      SizedBox(
                        child: ListView.builder(
                          itemCount: modal.bookingList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.bookingList![index];
                            if (data.status == "FAILED") {
                              return BookingDetailsView(
                                booking: data,
                              );
                            }
                            return const SizedBox();
                          },
                        ),
                      ),
                    ],
                  ))
                ],
              );
            })),
          ),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
