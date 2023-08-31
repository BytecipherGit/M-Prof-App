import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:m_proof/src/network/models/response/dummy/favorite_list.dart';

import '../../core_utils/export_dependency.dart';
import '../../core_utils/flush_bar_message.dart';
import '../../core_utils/toasts.dart';
import '../../network/api_response/api_response.dart';
import '../../network/models/response/favorite/basic_reponse.dart';
import '../../network/models/response/favorite/favorite_response.dart';
import '../../repositories/favorite_repository.dart';

class FavoriteProviderVm extends ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  void setLoading({required bool isLoading}) {
    _loading = isLoading;
    notifyListeners();
  }

  ApiResponse<FavoriteResponse> favoriteList = ApiResponse.loading();
  ApiResponse<FavoriteResponse> favoriteDoctorList = ApiResponse.loading();
  ApiResponse<FavoriteResponse> favoriteBarberList = ApiResponse.loading();
  ApiResponse<FavoriteResponse> favoriteArtistList = ApiResponse.loading();
  setFavoriteData(ApiResponse<FavoriteResponse> response) {
    favoriteList = response;
    AppLogger.logger.d("favoriteList: $favoriteList");
    notifyListeners();
  }

  setFavoriteDoctorData(ApiResponse<FavoriteResponse> response) {
    favoriteDoctorList = response;
    AppLogger.logger.d("favoriteDoctorList: $favoriteDoctorList");
    notifyListeners();
  }

  setFavoriteBarberData(ApiResponse<FavoriteResponse> response) {
    favoriteBarberList = response;
    AppLogger.logger.d("favoriteBarberList: $favoriteBarberList");
    notifyListeners();
  }

  setFavoriteArtistData(ApiResponse<FavoriteResponse> response) {
    favoriteArtistList = response;
    AppLogger.logger.d("favoriteArtistList: $favoriteArtistList");
    notifyListeners();
  }

  Future<void> setAsFavoriteApi(
      {required int profId, required BuildContext context}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setLoading(isLoading: true);
      AppLogger.logger.d("setAsFavoriteApi Request : $profId");

      // Call Function from the Repository Class
      await FavoriteRepository.favoriteRepositoryInstance
          .setAsFavoritesApi(profId: profId)
          .then((value) {
        AppLogger.logger.d("value: $value");
        final registerResponse = BasicResponse.fromJson(value);
        AppLogger.logger.d("UISetAsFavoriteApiHit: $registerResponse");

        if (registerResponse.status == false) {
          FlushBarMessage.flushBarTopErrorMessage(
              message: registerResponse.message!, context: context);
        } else {
          Toasts.getSuccessToast(text: registerResponse.message);
        }
        setLoading(isLoading: false);
      }).onError((error, stackTrace) {
        setLoading(isLoading: false);
      });
    } else {
      Toasts.getWarningToast(text: "No internet connection available");
    }
  }

  Future<void> fetchFavoritesApi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setFavoriteData(ApiResponse.loading());
      // Call Function from the Repository Class
      await FavoriteRepository.favoriteRepositoryInstance
          .getFavoritesApi()
          .then((value) {
        AppLogger.logger.d("fetchFavoritesApi: ${value!.data}");
        setFavoriteData(ApiResponse.completed(value));
      }).onError((error, stackTrace) {
        setFavoriteData(ApiResponse.error(error.toString()));
      });
    } else {
      setFavoriteData(ApiResponse.internet("No internet connection available"));
    }
    notifyListeners();
  }

  Future<void> fetchFavoritesDoctorApi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setFavoriteDoctorData(ApiResponse.loading());
      // Call Function from the Repository Class
      await FavoriteRepository.favoriteRepositoryInstance
          .getFavoritesDoctorApi()
          .then((value) {
        AppLogger.logger.d("fetchFavoritesApi: ${value!.data}");
        setFavoriteDoctorData(ApiResponse.completed(value));
      }).onError((error, stackTrace) {
        setFavoriteDoctorData(ApiResponse.error(error.toString()));
      });
    } else {
      setFavoriteDoctorData(
          ApiResponse.internet("No internet connection available"));
    }
    notifyListeners();
  }

  Future<void> fetchFavoritesBarberApi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setFavoriteBarberData(ApiResponse.loading());
      // Call Function from the Repository Class
      await FavoriteRepository.favoriteRepositoryInstance
          .getFavoritesBarberApi()
          .then((value) {
        AppLogger.logger.d("fetchFavoritesApi: ${value!.data}");
        setFavoriteBarberData(ApiResponse.completed(value));
      }).onError((error, stackTrace) {
        setFavoriteBarberData(ApiResponse.error(error.toString()));
      });
    } else {
      setFavoriteBarberData(
          ApiResponse.internet("No internet connection available"));
    }
    notifyListeners();
  }

  Future<void> fetchFavoritesArtistApi() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      setFavoriteArtistData(ApiResponse.loading());
      // Call Function from the Repository Class
      await FavoriteRepository.favoriteRepositoryInstance
          .getFavoritesArtistApi()
          .then((value) {
        AppLogger.logger.d("fetchFavoritesApi: ${value!.data}");
        setFavoriteArtistData(ApiResponse.completed(value));
      }).onError((error, stackTrace) {
        setFavoriteArtistData(ApiResponse.error(error.toString()));
      });
    } else {
      setFavoriteArtistData(
          ApiResponse.internet("No internet connection available"));
    }
    notifyListeners();
  }

  List<FavoriteList>? favList = [
    FavoriteList(
        name: "Nathan Reinhardt V",
        image: AppImage.dr1Image,
        id: 1,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    FavoriteList(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.1,
        location: "bangalore airport ar...",
        image: AppImage.bar1Image,
        status: "OPEN NOW"),
    FavoriteList(
        id: 1,
        name: "The Barber Shop",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.8,
        location: "bangalore airport ar...",
        image: AppImage.bar3Image,
        status: "OPEN NOW"),
    FavoriteList(
        name: "Christian Strogies",
        image: AppImage.dr2Image,
        id: 2,
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 3.9,
        type: "Orthopaedic ",
        status: "OPEN NOW"),
    FavoriteList(
        id: 2,
        name: "Good Place",
        startTime: "09:00",
        closeTime: "21:00",
        isFav: 1,
        rating: 4.0,
        location: "bangalore airport ar...",
        image: AppImage.bar2Image,
        status: "OPEN NOW"),
    FavoriteList(
        name: "Leonhard Jander",
        image: AppImage.dr3Image,
        id: 3,
        startTime: "09:00",
        closeTime: "14:00",
        isFav: 1,
        rating: 4.3,
        type: "Doctor of Medicine ",
        status: "CLOSED"),
    FavoriteList(
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
