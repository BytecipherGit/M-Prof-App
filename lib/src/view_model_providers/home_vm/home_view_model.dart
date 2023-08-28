import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:m_proof/src/core_utils/flush_bar_message.dart';
import 'package:m_proof/src/network/models/response/dashboard/dashboard_response.dart';
import 'package:m_proof/src/network/models/response/dummy/category_list.dart';

import '../../core_utils/export_dependency.dart';
import '../../network/api_response/api_response.dart';
import '../../network/models/response/dummy/barber_list.dart';
import '../../network/models/response/dummy/hospital_list.dart';
import '../../network/models/response/dummy/review_list.dart';
import '../../network/models/response/dummy/specialisations_list.dart';
import '../../network/models/response/dummy/vendor_list_response.dart';
import '../../repositories/home_repository.dart';

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
        type: "Orthopaedic",
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
        type: "Doctor of Medicine",
        status: "CLOSED"),
    VendorListResponse(
        name: "Dr. Nathan Reinhardt",
        image: AppImage.dr4Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 0,
        rating: 4.0,
        type: "Master of Surgery",
        status: "CLOSED"),
    VendorListResponse(
        name: "Dr. Letizia Marl",
        image: AppImage.dr5Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 0,
        rating: 3.5,
        type: "Doctor of Medicine",
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

  List<VendorListResponse>? musicianList = [
    VendorListResponse(
        name: "Nathan Reinhardt",
        image: AppImage.sing1Image,
        id: 1,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 0,
        rating: 4.9,
        type: "Guitarist",
        status: "OPEN NOW"),
    VendorListResponse(
        name: "Letizia Marl",
        image: AppImage.sing2Image,
        id: 2,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.9,
        type: "Drummer",
        status: "OPEN NOW"),
    VendorListResponse(
        name: "Leonhard Jander",
        image: AppImage.sing3Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 0,
        rating: 4.3,
        type: "Singer",
        status: "CLOSED"),
  ];
  List<String> musicianSpecialisationsList = [
    "Guitarist",
    "Drummer",
    "Singer",
    "Voice-over Artist",
    "Tabla",
    "Classic Music"
  ];

  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Morning';
    }
    if (hour < 17) {
      return 'Afternoon';
    }
    return 'Evening';
  }

  String? currentAddress;
  Position? _currentPosition;

  Future<bool> _handleLocationPermission(BuildContext context) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      FlushBarMessage.flushBarTopErrorMessage(
          message: "Location services are disabled. Please enable the services",
          context: context);
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        FlushBarMessage.flushBarTopErrorMessage(
            message: "Location permissions are denied", context: context);
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      FlushBarMessage.flushBarTopErrorMessage(
          message:
              "Location permissions are permanently denied, we cannot request permissions.",
          context: context);
      return false;
    }
    return true;
  }

  Future<void> getCurrentPosition(BuildContext context) async {
    final hasPermission = await _handleLocationPermission(context);

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      _currentPosition = position;
      _getAddressFromLatLng(_currentPosition!);
      notifyListeners();
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      var currentAddress2 =
          '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      currentAddress = ' ${place.locality}';
      AppLogger.logger.d("currentAddress2 $currentAddress2");
      AppLogger.logger.d("currentAddress $currentAddress");
    }).catchError((e) {
      debugPrint(e);
    });
  }

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

  ApiResponse<DashBoardResponse> dashBoardList = ApiResponse.loading();
  List<Category> categoryList = [];
  List<Doctor> doctor = [];
  List<Barber> barbers = [];
  List<Barber> gymTrainer = [];
  List<Barber> yogaInstructor = [];
  setDashboardData(ApiResponse<DashBoardResponse> response) {
    dashBoardList = response;
    AppLogger.logger.d("getUserJobListError: $dashBoardList");
    notifyListeners();
  }

  Future<void> fetchDashBoardApi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setDashboardData(ApiResponse.loading());
      // Call Function from the Repository Class
      await HomeRepository.homeRepositoryInstance
          .getDashBoardApi()
          .then((value) {
        if (value!.data != null) {
          for (var element in value.data!.category!) {
            categoryList.add(element);
          }
          for (var element in value.data!.doctor!) {
            doctor.add(element);
          }
          for (var element in value.data!.barbers!) {
            barbers.add(element);
          }
          for (var element in value.data!.gymTrainer!) {
            gymTrainer.add(element);
          }
          for (var element in value.data!.yogaInstructor!) {
            yogaInstructor.add(element);
          }
        }
        AppLogger.logger.d("fetchDashBoardApi: ${value.data}");
        setDashboardData(ApiResponse.completed(value));
      }).onError((error, stackTrace) {
        setDashboardData(ApiResponse.error(error.toString()));
      });
    } else {
      setDashboardData(
          ApiResponse.internet("No internet connection available"));
    }
    notifyListeners();
  }
}
