import '../../../../../core_utils/export_dependency.dart';
import '../../../../../network/models/response/dummy/specialisations_list.dart';

class SpecialisationsListView extends StatelessWidget {
  final SpecialisationsList specialisations;
  const SpecialisationsListView({super.key, required this.specialisations});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: AppDimens.height60,
            width: AppDimens.height60,
            padding: EdgeInsets.all(AppDimens.width20),
            margin: EdgeInsets.symmetric(
                vertical: AppDimens.height10, horizontal: AppDimens.width8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(AppDimens.radius10),
                )),
            child: Image.asset(
              specialisations.image!,
              fit: BoxFit.fill,
              height: AppDimens.height40,
              width: AppDimens.height40,
            ),
          ),
          Text(
            specialisations.title.toString(),
            style: AppStyle.specializationTitleTextTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
