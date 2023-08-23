import 'package:m_proof/src/network/models/response/dummy/favorite_response.dart';

import '../../core_utils/export_dependency.dart';

class FavoriteProviderVm extends ChangeNotifier {
  List<FavoriteResponse>? favList = [
    FavoriteResponse(
        name: "Nathan Reinhardt V",
        image: AppImage.dr1Image,
        id: 1,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    FavoriteResponse(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.1,
        location: "bangalore airport ar...",
        image: AppImage.bar1Image,
        status: "OPEN NOW"),
    FavoriteResponse(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.8,
        location: "bangalore airport ar...",
        image: AppImage.bar3Image,
        status: "OPEN NOW"),
    FavoriteResponse(
        name: "Christian Strogies",
        image: AppImage.dr2Image,
        id: 2,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    FavoriteResponse(
        id: 2,
        name: "Good Place",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.0,
        location: "bangalore airport ar...",
        image: AppImage.bar2Image,
        status: "OPEN NOW"),
    FavoriteResponse(
        name: "Leonhard Jander",
        image: AppImage.dr3Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 1,
        rating: 4.3,
        type: "Doctor of Medicine ",
        status: "CLOSED"),
    FavoriteResponse(
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
}
