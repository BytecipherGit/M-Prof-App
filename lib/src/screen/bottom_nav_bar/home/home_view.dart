import 'package:provider/provider.dart';

import '../../../core_utils/export_dependency.dart';
import '../../../view_model_providers/home_vm/home_view_model.dart';
import '../../../widget/wave_clip.dart';
import 'components/category_details_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
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
                    "Good Morning,",
                    style: AppStyle.greetingTextStyle,
                  ),
                  Text(
                    "Location",
                    style: AppStyle.locationTextStyle,
                  )
                ],
              )
            ],
          ),
          actions: [
            Stack(
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
                  right: 15,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(AppDimens.height3),
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
            Stack(
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
                  right: 15,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(AppDimens.height3),
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
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SafeArea(
            child: Consumer<HomeProviderVm>(builder: (context, modal, _) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: AppDimens.height45,
                        left: AppDimens.width10,
                        right: AppDimens.width10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
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
                        itemCount: modal.category!.length,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          var data = modal.category![index];
                          return CategoryDetailsView(category: data);
                        }),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: AppDimens.height900,
                        color: AppColors.bgColor,
                      ),
                      CustomPaint(
                        painter: AppBarPainter(),
                        child: Container(height: 0),
                      ),
                    ],
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
