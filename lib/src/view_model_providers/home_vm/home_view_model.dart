import 'package:m_proof/src/network/models/response/dummy/category_response.dart';

import '../../core_utils/export_dependency.dart';

class HomeProviderVm extends ChangeNotifier {
  List<CategoryListResponse>? category = [
    CategoryListResponse(
        id: 1, image: AppImage.barberImage, name: "Men’s Salon & Massage"),
    CategoryListResponse(
        id: 2, image: AppImage.womenSalonImage, name: "Women’s Salon & Massage"),
    CategoryListResponse(
        id: 3, image: AppImage.musicImage, name: "Music & Singing"),
    CategoryListResponse(
        id: 4, image: AppImage.gymImage, name: "GYM & Fitness"),
  ];
}
