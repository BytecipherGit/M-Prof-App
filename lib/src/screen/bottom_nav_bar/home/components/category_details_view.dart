import 'package:m_proof/src/helpers/routes/route_name.dart';

import '../../../../core_utils/export_dependency.dart';
import '../../../../network/models/response/dashboard/dashboard_response.dart';

class CategoryDetailsView extends StatelessWidget {
  final Category category;
  const CategoryDetailsView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimens.width100,
      child: Column(
        children: [
          RawMaterialButton(
            onPressed: () {
              if (category.id == 3) {
                Navigator.pushNamed(context, RouteName.musicDetailsScreen);
              }
            },
            elevation: 0.0,
            fillColor: const Color(0XFF292929),
            padding: EdgeInsets.all(AppDimens.height15),
            shape: const CircleBorder(),
            child: Image.asset(
              category.image ?? AppImage.barberImage,
              height: AppDimens.height30,
              width: AppDimens.height30,
            ),
          ),
          Text(
            category.category ?? "",
            style: AppStyle.categoryTitleTextStyle,
            textAlign: TextAlign.center,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
