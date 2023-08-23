import '../../core_utils/export_dependency.dart';
import '../../network/models/response/dummy/booking_response.dart';

class BookingProviderVm extends ChangeNotifier {
  List<BookingResponse>? bookingList = [
    BookingResponse(
        name: "Nathan Reinhardt V",
        id: 1,
        startTime: "09:00",
        endTime: "21:00",
        location: "KIAL Rd, Bengaluru, Karnat....",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        status: "SUCCESS"),
    BookingResponse(
        id: 2,
        name: "The Barber Shop",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "FAILED"),
    BookingResponse(
        id: 3,
        name: "The Barber Shop",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "SUCCESS"),
    BookingResponse(
        id: 4,
        name: "Christian Strogies",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "SUCCESS"),
    BookingResponse(
        id: 5,
        name: "Good Place",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "PENDING"),
    BookingResponse(
        id: 6,
        name: "Leonhard Jander",
        startTime: "09:00",
        endTime: "21:00",
        service: "Haircut for Men, Haircut for Women more services",
        timestamp: DateTime.now(),
        location: "bangalore airport ar...",
        status: "FAILED"),
    BookingResponse(
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
