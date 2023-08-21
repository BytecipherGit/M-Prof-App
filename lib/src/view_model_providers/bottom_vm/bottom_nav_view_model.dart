import 'package:m_proof/src/screen/bottom_nav_bar/near_by/near_by_view.dart';

import '../../core_utils/export_dependency.dart';
import '../../screen/bottom_nav_bar/flavorist /flavorist_view.dart';
import '../../screen/bottom_nav_bar/home/home_view.dart';
import '../../screen/bottom_nav_bar/settings/setting_view.dart';

class BottomProviderVm extends ChangeNotifier {
  int _currentTab = 0;
  int get currentTab => _currentTab;
  get currentScreen => tabs![currentTab];
  String _camsBaseUrl = '';

  setCamsBaseUrl(String value) {
    _camsBaseUrl = value;
    notifyListeners();
  }

  String get camsBaseUrl => _camsBaseUrl;
  List<Widget>? tabs = [
    const HomeView(),
    const NearByView(),
    const FlavoristView(),
    const SettingView(),
  ];

  updateTabValue(int tab) {
    _currentTab = tab;
    notifyListeners();
  }
}
