import 'package:provider/provider.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../view_model_providers/home_vm/home_view_model.dart';
import '../../../../widget/wave_clip.dart';
import '../../home/components/hosptial_details.dart';

class VendorListByCategoryView extends StatelessWidget {
  final String title;
  const VendorListByCategoryView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          title,
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
          Container(
              color: AppColors.bgColor,
              padding: EdgeInsets.symmetric(horizontal: AppDimens.width10),
              child: Consumer<HomeProviderVm>(builder: (context, modal, _) {
                return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: modal.hospitalList!.length,
                    padding: EdgeInsets.only(
                        left: AppDimens.width8,
                        right: AppDimens.width8,
                        top: AppDimens.height15),
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var data = modal.hospitalList![index];
                      return HospitalDetails(hospital: data);
                    });
              })),
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
              Container(
                padding: EdgeInsets.only(
                    left: AppDimens.width40,
                    right: AppDimens.width40,
                    top: AppDimens.height15,
                    bottom: AppDimens.height15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0XFFD7D9DD),
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppDimens.radius5))),
                child: Row(
                  children: [
                    Image.asset(
                      AppImage.expandAllIcon,
                      color: const Color(0XFF7E7E7E),
                      width: AppDimens.height15,
                      height: AppDimens.height10,
                    ),
                    SizedBox(
                      width: AppDimens.width5,
                    ),
                    Text(
                      "Sort by",
                      style: AppStyle.filterTextTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: AppDimens.width40,
                    right: AppDimens.width40,
                    top: AppDimens.height15,
                    bottom: AppDimens.height15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0XFFD7D9DD),
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppDimens.radius5))),
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: const Color(0XFF7E7E7E),
                      size: AppDimens.height15,
                    ),
                    SizedBox(
                      width: AppDimens.width5,
                    ),
                    Text(
                      "Filter",
                      style: AppStyle.filterTextTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
