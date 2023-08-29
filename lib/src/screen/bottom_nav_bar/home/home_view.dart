import 'package:provider/provider.dart';

import '../../../core_utils/export_dependency.dart';
import '../../../network/api_response/api_response.dart';
import '../../../view_model_providers/home_vm/home_view_model.dart';
import '../../../widget/no_internet.dart';
import 'components/barber_details_view.dart';
import 'components/category_details_view.dart';
import 'components/hospital_details.dart';
import 'components/vendor_details.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeProviderVm homeProvider;

  @override
  void initState() {
    super.initState();
    homeProvider = Provider.of<HomeProviderVm>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeProvider.fetchDashBoardApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Consumer<HomeProviderVm>(builder: (context, modal, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                CircleAvatar(
                  child: Image.asset(AppImage.userImage),
                ),
                SizedBox(
                  width: AppDimens.width10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good ${modal.greeting()},",
                      style: AppStyle.greetingTextStyle,
                    ),
                    Text(
                      "${modal.currentAddress}",
                      style: AppStyle.locationTextStyle,
                    )
                  ],
                )
              ],
            ),
            actions: [
              SizedBox(
                width: AppDimens.width50,
                child: Stack(
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 0.0,
                      fillColor: const Color(0XFF292929),
                      padding: EdgeInsets.all(AppDimens.height12),
                      shape: const CircleBorder(),
                      child: Image.asset(
                        AppImage.chatIcon,
                        height: AppDimens.height20,
                        width: AppDimens.height20,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.all(AppDimens.height4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                              color: const Color(0XFF292929),
                              fontSize: AppDimens.fontSize10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: AppDimens.width10,
              ),
              SizedBox(
                width: AppDimens.width50,
                child: Stack(
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 0.0,
                      fillColor: const Color(0XFF292929),
                      padding: EdgeInsets.all(AppDimens.height12),
                      shape: const CircleBorder(),
                      child: Image.asset(
                        AppImage.bellIcon,
                        height: AppDimens.height20,
                        width: AppDimens.height20,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        padding: EdgeInsets.all(AppDimens.height4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '9',
                          style: TextStyle(
                              color: const Color(0XFF292929),
                              fontSize: AppDimens.fontSize10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: AppDimens.width10,
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: SafeArea(
              child: Consumer<HomeProviderVm>(builder: (context, value, _) {
                switch (value.dashBoardList.statusEnum) {
                  case StatusEnum.loading:
                    return SizedBox(
                      height: AppDimens.height500,
                      child: Center(
                          child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                        strokeWidth: 3,
                      )),
                    );
                  case StatusEnum.error:
                    return Center(
                      child: Text(value.dashBoardList.message.toString()),
                    );
                  case StatusEnum.internet:
                    return const NoInternet();
                  case StatusEnum.completed:
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: AppDimens.height20,
                              left: AppDimens.width10,
                              right: AppDimens.width10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category".toUpperCase(),
                                style: AppStyle.categoryTextStyle,
                              ),
                              Text(
                                "See All",
                                style: AppStyle.seeAllTextStyle,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppDimens.height20,
                        ),
                        SizedBox(
                          height: AppDimens.height120,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: modal
                                  .dashBoardList.data!.data!.category!.length,
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                var data = modal
                                    .dashBoardList.data!.data!.category![index];
                                return CategoryDetailsView(category: data);
                              }),
                        ),
                        Stack(
                          children: [
                            Container(
                              color: AppColors.bgColor,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: AppDimens.height20,
                                    horizontal: AppDimens.width10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Doctors Near You".toUpperCase(),
                                          style: AppStyle.categoryTextStyle
                                              .copyWith(
                                                  color:
                                                      const Color(0XFF09131E)),
                                        ),
                                        Text(
                                          "See All",
                                          style: AppStyle.seeAllTextStyle
                                              .copyWith(
                                                  color:
                                                      const Color(0XFF686868)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppDimens.height15,
                                    ),
                                    SizedBox(
                                      height: AppDimens.height175,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: modal.dashBoardList.data!
                                              .data!.doctor!.length,
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          physics:
                                              const ClampingScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            var data = modal.dashBoardList.data!
                                                .data!.doctor![index];
                                            return VendorDetails(doctor: data);
                                          }),
                                    ),
                                    SizedBox(
                                      height: AppDimens.height20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Top Barbershop".toUpperCase(),
                                          style: AppStyle.categoryTextStyle
                                              .copyWith(
                                                  color:
                                                      const Color(0XFF09131E)),
                                        ),
                                        Text(
                                          "See All",
                                          style: AppStyle.seeAllTextStyle
                                              .copyWith(
                                                  color:
                                                      const Color(0XFF686868)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppDimens.height20,
                                    ),
                                    SizedBox(
                                      child: GridView.builder(
                                        itemCount: modal.dashBoardList.data!
                                                    .data!.barbers!.length >
                                                4
                                            ? 4
                                            : modal.dashBoardList.data!.data!
                                                .barbers!.length,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        physics: const ScrollPhysics(),
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: (1 / 1.17),
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          var data = modal.dashBoardList.data!
                                              .data!.barbers![index];
                                          if (index < 5) {
                                            return BarberDetailsView(
                                              barber: data,
                                            );
                                          } else {
                                            return Container();
                                          }
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: AppDimens.height20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: AppDimens.width200,
                                          child: Text(
                                            "Hospital for Your Service"
                                                .toUpperCase(),
                                            style: AppStyle.categoryTextStyle
                                                .copyWith(
                                                    color: const Color(
                                                        0XFF09131E)),
                                          ),
                                        ),
                                        Text(
                                          "See All",
                                          style: AppStyle.seeAllTextStyle
                                              .copyWith(
                                                  color:
                                                      const Color(0XFF686868)),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: AppDimens.height20,
                                    ),
                                    ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            modal.hospitalList!.length > 4
                                                ? 4
                                                : modal.hospitalList!.length,
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          var data = modal.hospitalList![index];
                                          if (index < 5) {
                                            return HospitalDetails(
                                              hospital: data,
                                            );
                                          } else {
                                            return Container();
                                          }
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            CustomPaint(
                              painter: AppBarPainter(),
                              child: Container(height: 0),
                            ),
                          ],
                        )
                      ],
                    );
                  case null:
                    return Expanded(
                        child: ListView(
                      padding: EdgeInsets.only(top: AppDimens.height200),
                      children: [
                        Center(
                            child: Text(
                          "No Data found",
                          style: AppStyle.appBarTitleTextStyle,
                        )),
                      ],
                    ));
                }
              }),
            ),
          ),
        );
      }),
    );
  }
}
