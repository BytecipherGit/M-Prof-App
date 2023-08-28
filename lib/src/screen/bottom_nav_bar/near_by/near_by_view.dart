import 'package:m_proof/src/helpers/routes/route_name.dart';

import '../../../core_utils/export_dependency.dart';

class NearByView extends StatefulWidget {
  const NearByView({super.key});

  @override
  State<NearByView> createState() => _NearByViewState();
}

class _NearByViewState extends State<NearByView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Near By",
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
            padding: EdgeInsets.symmetric(horizontal: AppDimens.width20),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                SizedBox(
                  height: AppDimens.height20,
                ),
                Text(
                  "Choose Category".toUpperCase(),
                  style: AppStyle.accountSettingTitleTextStyle,
                ),
                SizedBox(
                  height: AppDimens.height30,
                ),
                NearByListTile(
                  image: AppImage.hospitalIcon,
                  title: "Hospital, Doctor or Clinic",
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteName.vendorListByCategoryScreen,
                        arguments: "Hospital, Doctor or Clinic");
                  },
                ),
                NearByListTile(
                  image: AppImage.shopIcon,
                  title: "Barber, Barber Shop",
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteName.vendorListByCategoryScreen,
                        arguments: "Barber, Barber Shop");
                  },
                ),
                NearByListTile(
                  image: AppImage.musicIcon,
                  title: "Music & Singing Classes",
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteName.vendorListByCategoryScreen,
                        arguments: "Music & Singing Classes");
                  },
                ),
                NearByListTile(
                  image: AppImage.gymIcon,
                  title: "Gym & Yoga",
                  onTap: () {
                    Navigator.pushNamed(
                        context, RouteName.vendorListByCategoryScreen,
                        arguments: "Gym & Yoga");
                  },
                ),
              ],
            ),
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

class NearByListTile extends StatelessWidget {
  final String image;
  final String title;
  final void Function()? onTap;
  const NearByListTile(
      {super.key, required this.image, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      contentPadding: EdgeInsets.symmetric(vertical: AppDimens.height2),
      leading: Image.asset(image, height: AppDimens.height18),
      title: Text(
        title,
        style: AppStyle.listTileTitleTextStyle,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: AppDimens.height12,
      ),
      onTap: onTap,
    );
  }
}
