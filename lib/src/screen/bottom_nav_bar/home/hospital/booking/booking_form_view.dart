import 'package:m_proof/src/widget/dialogues.dart';
import 'package:time_slot/model/time_slot_Interval.dart';
import '../../../../../core_utils/date_utils.dart';
import '../../../../../core_utils/export_dependency.dart';
import '../../../../../core_utils/time_slot.dart';
import '../../../../../widget/booking_form_filed_with_label.dart';
import '../../../../../widget/new_rounded_button.dart';

class BookingFormView extends StatefulWidget {
  const BookingFormView({super.key});

  @override
  State<BookingFormView> createState() => _BookingFormViewState();
}

class _BookingFormViewState extends State<BookingFormView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode noteFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Book Appointment",
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
                BookingFormFieldWithLabel(
                    controller: nameController,
                    label: "Your Name",
                    hintText: "Enter Your Name",
                    maxLength: 30,
                    labelStyle: AppStyle.welcomeBackTextStyle,
                    hintTextStyle: AppStyle.hintTextStyle,
                    onSave: (String? value) {},
                    focusNode: nameFocusNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text),
                SizedBox(
                  height: AppDimens.height10,
                ),
                BookingFormFieldWithLabel(
                    controller: nameController,
                    label: "Mobile Number",
                    hintText: "Enter Mobile Number",
                    maxLength: 30,
                    labelStyle: AppStyle.welcomeBackTextStyle,
                    hintTextStyle: AppStyle.hintTextStyle,
                    onSave: (String? value) {},
                    focusNode: nameFocusNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text),
                SizedBox(
                  height: AppDimens.height20,
                ),
                Text(
                  "Select Date",
                  style: AppStyle.accountSettingTitleTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                Container(
                  padding: EdgeInsets.all(AppDimens.height10),
                  decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppDimens.radius10))),
                  child: HorizontalWeekCalendar(
                    weekStartFrom: WeekStartFrom.Monday,
                    activeBackgroundColor: AppColors.primaryColor,
                    activeTextColor: Colors.white,
                    inactiveBackgroundColor: Colors.transparent,
                    inactiveTextColor: const Color(0XFF586068),
                    disabledTextColor: const Color(0XFF586068),
                    disabledBackgroundColor: Colors.transparent,
                    activeNavigatorColor: AppColors.blackColor,
                    inactiveNavigatorColor: Colors.grey,
                    monthColor: const Color(0XFF0F0F0F),
                    onDateChange: (date) {},
                  ),
                ),
                SizedBox(
                  height: AppDimens.height20,
                ),
                Text(
                  "Time Slot",
                  style: AppStyle.accountSettingTitleTextStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                TimesSlotGridViewFromLocal(
                  initTime: DateTime.now(),
                  crossAxisCount: 4,
                  timeSlotInterval: const TimeSlotInterval(
                    start: TimeOfDay(hour: 10, minute: 30),
                    end: TimeOfDay(hour: 21, minute: 30),
                    interval: Duration(hours: 1, minutes: 0),
                  ),
                  onChange: (value) {},
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                SizedBox(
                  height: AppDimens.height10,
                ),
                BookingFormFieldWithLabel(
                    controller: nameController,
                    label: "Add Note",
                    hintText: "Enter Note",
                    maxLength: 30,
                    maxLine: 5,
                    labelStyle: AppStyle.welcomeBackTextStyle,
                    hintTextStyle: AppStyle.hintTextStyle,
                    onSave: (String? value) {},
                    focusNode: nameFocusNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.multiline),
                SizedBox(
                  height: AppDimens.height20,
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
