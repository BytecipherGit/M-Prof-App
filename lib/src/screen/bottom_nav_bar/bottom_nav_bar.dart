import 'package:provider/provider.dart';

import '../../core_utils/export_dependency.dart';
import '../../view_model_providers/bottom_vm/bottom_nav_view_model.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomProviderVm>(
      builder: (context, value, child) {
        return Scaffold(
          body: value.currentScreen,
          bottomNavigationBar: SizedBox(
            child: Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                selectedItemColor: AppColors.primaryColor,
                selectedLabelStyle: AppStyle.bottomNavBarSelectedTextStyle,
                unselectedLabelStyle: AppStyle.bottomNavBarUnSelectedTextStyle,
                selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
                backgroundColor: AppColors.whiteColor,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImage.homeIcon,
                      height: AppDimens.height20,
                      width: AppDimens.width20,
                      color: value.currentTab == 0
                          ? AppColors.primaryColor
                          : AppColors.placeholderColor,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImage.nearByIcon,
                      height: AppDimens.height20,
                      width: AppDimens.width20,
                      color: value.currentTab == 1
                          ? AppColors.primaryColor
                          : AppColors.placeholderColor,
                    ),
                    label: "Near By",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImage.favoriteIcon,
                      height: AppDimens.height20,
                      width: AppDimens.width20,
                      color: value.currentTab == 2
                          ? AppColors.primaryColor
                          : AppColors.placeholderColor,
                    ),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      AppImage.settingsIcon,
                      height: AppDimens.height20,
                      width: AppDimens.width20,
                      color: value.currentTab == 3
                          ? AppColors.primaryColor
                          : AppColors.placeholderColor,
                    ),
                    label: "Settings",
                  ),
                ],
                currentIndex: value.currentTab,
                onTap: (int tab) {
                  value.updateTabValue(tab);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
