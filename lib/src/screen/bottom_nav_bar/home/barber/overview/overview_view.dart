import 'package:m_proof/src/widget/dialogues.dart';
import '../../../../../core_utils/export_dependency.dart';
import '../../../../../widget/new_rounded_button.dart';
import 'components/item_tile_view.dart';

class OverViewView extends StatefulWidget {
  const OverViewView({super.key});

  @override
  State<OverViewView> createState() => _OverViewViewState();
}

class _OverViewViewState extends State<OverViewView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Overview",
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
            padding: EdgeInsets.symmetric(horizontal: AppDimens.width20),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                SizedBox(
                  height: AppDimens.height20,
                ),
                Text(
                  "The Barber Shop",
                  style: AppStyle.signInTextStyle
                      .copyWith(fontSize: AppDimens.fontSize20),
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
                  height: AppDimens.height20,
                ),
                Text(
                  "Token ID",
                  style: AppStyle.vendorNameTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "DMKDK0035S",
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize10,
                      color: const Color(0XFF686868)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: AppDimens.height15),
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return const ItemTileView();
                    },
                  ),
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "Time & Day Slot",
                  style: AppStyle.vendorNameTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "02:30 PM - 02:50 PM",
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize12,
                      color: const Color(0XFF686868)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "Monday - 12 March 2023",
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize12,
                      color: const Color(0XFF686868)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "Time & Day Slot",
                  style: AppStyle.vendorNameTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.",
                  style: AppStyle.vendorTypeTextStyle.copyWith(
                      fontSize: AppDimens.fontSize12,
                      color: const Color(0XFF686868)),
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                NewRoundedButton(
                  color: AppColors.primaryColor,
                  text: "Book Appointment",
                  textColor: AppColors.whiteColor,
                  onPressedFunction: () {
                    BookingConfirmationDialogue.showDialogue(context);
                  },
                ),
                SizedBox(
                  height: AppDimens.height10,
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
