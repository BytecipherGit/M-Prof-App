import '../../core_utils/export_dependency.dart';
import '../../network/models/response/dummy/booking_list.dart';

class BookingProviderVm extends ChangeNotifier {
  List<BookingList>? bookingList = [
    BookingList(
        name: "Nathan Reinhardt V",
        id: 1,
        startTime: "09:00",
        endTime: "21:00",
        location: "KIAL Rd, Bengaluru, Karnat....",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        status: "SUCCESS"),
    BookingList(
        id: 2,
        name: "The Barber Shop",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "FAILED"),
    BookingList(
        id: 3,
        name: "The Barber Shop",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "SUCCESS"),
    BookingList(
        id: 4,
        name: "Christian Strogies",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "SUCCESS"),
    BookingList(
        id: 5,
        name: "Good Place",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "PENDING"),
    BookingList(
        id: 6,
        name: "Leonhard Jander",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "FAILED"),
    BookingList(
        id: 7,
        name: "The Barber Shop",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "SUCCESS"),
  ];
}
