import 'package:m_proof/src/network/models/response/dummy/category_response.dart';

import '../../core_utils/export_dependency.dart';
import '../../network/models/response/dummy/barber_response.dart';
import '../../network/models/response/dummy/hospital_reponse.dart';
import '../../network/models/response/dummy/vendor_list_response.dart';

class HomeProviderVm extends ChangeNotifier {
  List<CategoryListResponse>? category = [
    CategoryListResponse(
        id: 1, image: AppImage.barberImage, name: "Men’s Salon & Massage"),
    CategoryListResponse(
        id: 2,
        image: AppImage.womenSalonImage,
        name: "Women’s Salon & Massage"),
    CategoryListResponse(
        id: 3, image: AppImage.musicImage, name: "Music & Singing"),
    CategoryListResponse(
        id: 4, image: AppImage.gymImage, name: "GYM & Fitness"),
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

  List<BarberListResponse>? barberList = [
    BarberListResponse(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.1,
        location: "bangalore airport ar...",
        image: AppImage.bar1Image,
        status: "OPEN NOW"),
    BarberListResponse(
        id: 2,
        name: "Good Place",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.0,
        location: "bangalore airport ar...",
        image: AppImage.bar2Image,
        status: "OPEN NOW"),
    BarberListResponse(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.8,
        location: "bangalore airport ar...",
        image: AppImage.bar3Image,
        status: "OPEN NOW"),
    BarberListResponse(
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

  List<HospitalResponse>? hospitalList = [
    HospitalResponse(
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
    HospitalResponse(
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
  ];
}
