import 'package:flutter/material.dart';

Constants constants = Constants();

const title = "Constants";

class Constants {
  static final Constants _constants = Constants._i();

  factory Constants() {
    return _constants;
  }

  Constants._i();

  final BASE_IMAGE_URL = "https://image.tmdb.org/t/p/";
  final IMAGE_SIZE_ORIGINAL = "original";
  final BACKDROP_SIZE_W300 = "w300";
  final BACKDROP_SIZE_w780 = "w780";
  final BACKDROP_SIZE_w1280 = "w1280";
  final POSTER_SIZE_W92 = "w92";
  final POSTER_SIZE_W154 = "w154";
  final POSTER_SIZE_W185 = "w185";
  final POSTER_SIZE_W342 = "w342";
  final POSTER_SIZE_W500 = "w500";
  final POSTER_SIZE_W780 = "w780";

  String getImageUrl() => BASE_IMAGE_URL + POSTER_SIZE_W185;

  String getBackdropImageUrl() => BASE_IMAGE_URL + BACKDROP_SIZE_w780;

  bool isKeyboardOpened(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom != 0;
  }

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
  }

  void dismissKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  void showSnackBar(String title, String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.black.withOpacity(0.3),
      content: Text(msg),
    ));
  }

  void dismissSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}
