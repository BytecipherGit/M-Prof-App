// ignore_for_file: always_use_package_imports

import 'package:flutter/material.dart';
import 'package:time_slot/controller/day_part_controller.dart';
import 'package:time_slot/model/time_slot_Interval.dart';

import 'time_slot_grid_view.dart';

class TimesSlotGridViewFromLocal extends StatefulWidget {
  /// init time to sected.
  ///
  /// ```dart
  /// initTime: Datetime.now()
  /// ```
  final DateTime initTime;

  /// time slot interval
  ///
  /// ```dart
  /// timeSlotInterval: TimeSlotInterval(
  ///   start : TimeOfDay(hour: 15, minute: 0), // 3:00pm
  ///   end : TimeOfDay(hour: 22, minute: 0), // 10:00pm,
  ///   interval : Duration(minutes: 45),
  /// )
  /// ```
  final TimeSlotInterval timeSlotInterval;

  /// to get selection time
  ///
  /// ```dart
  /// onChange: (selectTime){
  /// print(selectTime.toString())
  /// }
  /// ```
  final ValueChanged<DateTime> onChange;

  /// icon of card time
  ///
  /// ```dart
  /// icon: Icons.access_time,
  /// ```
  final IconData? icon;

  /// color of selected card time
  ///
  /// ```dart
  /// selectedColor: Colors.blue,
  /// ```
  final Color? selectedColor;

  /// color of unselected card time
  ///
  /// ```dart
  /// unSelectedColor: Colors.white,
  /// ```
  final Color? unSelectedColor;

  /// cross axis count of gridview
  ///
  /// ```dart
  /// crossAxisCount: 3, //default value
  /// ```
  final int crossAxisCount;

  const TimesSlotGridViewFromLocal({
    super.key,
    required this.initTime,
    required this.onChange,
    required this.timeSlotInterval,
    this.crossAxisCount = 3,
    this.icon,
    this.selectedColor,
    this.unSelectedColor,
  });

  @override
  State<TimesSlotGridViewFromLocal> createState() =>
      _TimesSlotGridViewFromLocalState();
}

class _TimesSlotGridViewFromLocalState
    extends State<TimesSlotGridViewFromLocal> {
  /// to access DayPartController
  DayPartController dayPartController = DayPartController();

  final List<DateTime> listTimes = [];

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      fullDataList();
    });
  }

  void fullDataList() {
    ///difference in hours
    final double differenceHours =
        convertTimeOfDayToDouble(widget.timeSlotInterval.end) -
            convertTimeOfDayToDouble(widget.timeSlotInterval.start);
    final double differenceMinute = differenceHours * 60;

    /// get count interval to for loop iteration
    final int countInterval =
        (differenceMinute / widget.timeSlotInterval.interval.inMinutes).round();

    for (int i = 0; i < countInterval; i++) {
      setState(() {
        listTimes.add(
          DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day,
            widget.timeSlotInterval.start.hour,
            widget.timeSlotInterval.start.minute,
          ).add(widget.timeSlotInterval.interval * i),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TimeSlotGridViewFromLocalUtils(
      initTime: widget.initTime,
      onChange: widget.onChange,
      listDates: listTimes,
      crossAxisCount: widget.crossAxisCount,
      icon: widget.icon,
      selectedColor: widget.selectedColor,
      unSelectedColor: widget.unSelectedColor,
    );
  }

  double convertTimeOfDayToDouble(TimeOfDay timeOfDay) {
    return double.parse("${timeOfDay.hour}.${timeOfDay.minute}");
  }
}
