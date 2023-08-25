import 'package:m_proof/src/network/models/response/dummy/category_list.dart';

import '../../core_utils/export_dependency.dart';
import '../../network/models/response/dummy/barber_list.dart';
import '../../network/models/response/dummy/hospital_list.dart';
import '../../network/models/response/dummy/review_list.dart';
import '../../network/models/response/dummy/specialisations_list.dart';
import '../../network/models/response/dummy/vendor_list_response.dart';

class HomeProviderVm extends ChangeNotifier {
  List<CategoryList>? category = [
    CategoryList(
        id: 1, image: AppImage.barberImage, name: "Men’s Salon & Massage"),
    CategoryList(
        id: 2,
        image: AppImage.womenSalonImage,
        name: "Women’s Salon & Massage"),
    CategoryList(id: 3, image: AppImage.musicImage, name: "Music & Singing"),
    CategoryList(id: 4, image: AppImage.gymImage, name: "GYM & Fitness"),
  ];
  List<VendorListResponse>? vendorList = [
    VendorListResponse(
        name: "Nathan Reinhardt V",
        image: AppImage.dr1Image,
        id: 1,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    VendorListResponse(
        name: "Christian Strogies",
        image: AppImage.dr2Image,
        id: 2,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    VendorListResponse(
        name: "Leonhard Jander",
        image: AppImage.dr3Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 0,
        rating: 4.3,
        type: "Doctor of Medicine ",
        status: "CLOSED"),
  ];

  List<BarberList>? barberList = [
    BarberList(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.1,
        location: "bangalore airport ar...",
        image: AppImage.bar1Image,
        status: "OPEN NOW"),
    BarberList(
        id: 2,
        name: "Good Place",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.0,
        location: "bangalore airport ar...",
        image: AppImage.bar2Image,
        status: "OPEN NOW"),
    BarberList(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.8,
        location: "bangalore airport ar...",
        image: AppImage.bar3Image,
        status: "OPEN NOW"),
    BarberList(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 5.0,
        location: "bangalore airport ar...",
        image: AppImage.bar4Image,
        status: "OPEN NOW"),
  ];

  List<HospitalList>? hospitalList = [
    HospitalList(
        id: 1,
        name: "Hospital Service",
        startTime: "09:00",
        type: "Master of Surgery",
        closeTime: "21:00",
        location: "KIAL Rd, Devanahalli, Bengaluru,Karnataka 560300",
        distance: "15 KM",
        phone: "+91 99999 99999",
        image: AppImage.hos1Image,
        rating: 4.3,
        status: "OPEN NOW",
        isFav: 0),
    HospitalList(
        id: 2,
        name: "Dr. Nathan Reinhardt",
        startTime: "09:00",
        type: "Master of Surgery",
        closeTime: "14:00",
        location: "KIAL Rd, Devanahalli, Bengaluru,Karnataka 560300",
        distance: "15 KM",
        phone: "+91 99999 99999",
        image: AppImage.hos2Image,
        rating: 4.3,
        status: "CLOSED",
        isFav: 1),
    HospitalList(
        id: 2,
        name: "Dr. Letizia Marl",
        startTime: "09:00",
        type: "Master of Surgery",
        closeTime: "14:00",
        location: "KIAL Rd, Devanahalli, Bengaluru,Karnataka 560300",
        distance: "15 KM",
        phone: "+91 99999 99999",
        image: AppImage.hos3Image,
        rating: 4.3,
        status: "CLOSED",
        isFav: 1),
    HospitalList(
        id: 2,
        name: "Dr. Nathan Reinhardt",
        startTime: "09:00",
        type: "Master of Surgery",
        closeTime: "14:00",
        location: "KIAL Rd, Devanahalli, Bengaluru,Karnataka 560300",
        distance: "15 KM",
        phone: "+91 99999 99999",
        image: AppImage.hos2Image,
        rating: 4.3,
        status: "CLOSED",
        isFav: 0),
    HospitalList(
        id: 1,
        name: "Hospital Service",
        startTime: "09:00",
        type: "Master of Surgery",
        closeTime: "21:00",
        location: "KIAL Rd, Devanahalli, Bengaluru,Karnataka 560300",
        distance: "15 KM",
        phone: "+91 99999 99999",
        image: AppImage.hos1Image,
        rating: 4.3,
        status: "OPEN NOW",
        isFav: 1),
  ];
  List<SpecialisationsList>? specialisationsList = [
    SpecialisationsList(id: 1, title: "Haircut", image: AppImage.sp1Image),
    SpecialisationsList(id: 2, title: "Shaving", image: AppImage.sp2Image),
    SpecialisationsList(id: 3, title: "Shampoo", image: AppImage.sp3Image),
    SpecialisationsList(id: 4, title: "Shaving", image: AppImage.sp4Image),
  ];
  List<ReviewList>? reviewList = [
    ReviewList(
        userName: "user@mail",
        email: "user@mail",
        userImage: AppImage.dummyUserImage,
        rating: 4.0,
        comment:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
        timestamp: DateTime.now()),
    ReviewList(
        userName: "user@mail",
        email: "user@mail",
        userImage: AppImage.dummyUserImage,
        rating: 3.5,
        comment:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
        timestamp: DateTime.now()),
  ];

  List<String> hospitalSpecialisationsList = [
    "Orthopaedics",
    "Paediatrics",
    "Radiology",
    "Dermatology",
    "Ophthalmology",
    "Anaesthesia"
  ];
  String timeAgo(DateTime d) {
    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) {
      return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
    }
    if (diff.inHours > 0) {
      return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
    }
    if (diff.inMinutes > 0) {
      return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
    }
    return "just now";
  }
}
