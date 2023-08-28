import 'package:m_proof/src/view_model_providers/favorite_vm/favorite_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../core_utils/export_dependency.dart';
import '../../../../../widget/new_rounded_button.dart';
import 'components/rate_view.dart';

class BarberMenuListView extends StatefulWidget {
  const BarberMenuListView({super.key});

  @override
  State<BarberMenuListView> createState() => _BarberMenuListViewState();
}

class _BarberMenuListViewState extends State<BarberMenuListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "The Barber Shop",
          style: AppStyle.appBarTitleTextStyle,
        ),
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          DefaultTabController(
            length: 2,
            child: Scaffold(body:
                Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
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
                          text: 'Rate',
                        ),
                        Tab(
                          text: 'Package',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      SizedBox(
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return RateView(
                              index: index,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return RateView(
                              index: index,
                            );
                          },
                        ),
                      )
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
      bottomNavigationBar: Container(
          color: Colors.white,
          height: AppDimens.height70,
          padding: EdgeInsets.only(
              bottom: AppDimens.height10, top: AppDimens.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "₹ 750.00",
                style: AppStyle.filterTextTextStyle
                    .copyWith(fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: AppDimens.width150,
                height: AppDimens.height45,
                child: NewRoundedButton(
                  color: AppColors.primaryColor,
                  text: "Next",
                  textColor: AppColors.whiteColor,
                  onPressedFunction: () {},
                ),
              ),
            ],
          )),
    );
  }
}
