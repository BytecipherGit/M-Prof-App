import 'package:m_proof/src/screen/bottom_nav_bar/favorite/components/favorite_details_view.dart';
import 'package:m_proof/src/view_model_providers/favorite_vm/favorite_view_model.dart';
import 'package:provider/provider.dart';

import '../../../core_utils/export_dependency.dart';
import '../../../view_model_providers/home_vm/home_view_model.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  late HomeProviderVm homeProvider;

  @override
  void initState() {
    super.initState();
    homeProvider = Provider.of<HomeProviderVm>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeProvider.fetchFavoritesApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        title: Text(
          "Favorite",
          style: AppStyle.appBarTitleTextStyle,
        ),
        flexibleSpace: Image(
          image: AssetImage(AppImage.bgImage),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          DefaultTabController(
            length: 4,
            child: Scaffold(body:
                Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
              return Column(
                children: [
                  Container(
                    height: AppDimens.height50,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.all(
                            width: 1,
                            color: const Color(0XFFE4E4E4),
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppDimens.radius20),
                            topRight: Radius.circular(AppDimens.radius20))),
                    child: TabBar(
                      labelColor: const Color(0XFF292929),
                      labelStyle: AppStyle.labelTitleTextStyle,
                      unselectedLabelColor: const Color(0XFFBFBCBC),
                      indicatorColor: const Color(0XFF292929),
                      indicatorWeight: 4,
                      tabs: const [
                        Tab(
                          text: 'All',
                        ),
                        Tab(
                          text: 'Doctors',
                        ),
                        Tab(
                          text: 'Barber',
                        ),
                        Tab(
                          text: 'Artist',
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    children: [
                      SizedBox(
                        child: GridView.builder(
                          itemCount: modal.favList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: (1 / 1.25),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.favList![index];
                            return FavoriteDetailsView(
                              favorite: data,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        child: GridView.builder(
                          itemCount: modal.favList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: (1 / 1.25),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.favList![index];
                            return FavoriteDetailsView(
                              favorite: data,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        child: GridView.builder(
                          itemCount: modal.favList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: (1 / 1.25),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.favList![index];
                            return FavoriteDetailsView(
                              favorite: data,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        child: GridView.builder(
                          itemCount: modal.favList!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimens.width15,
                              vertical: AppDimens.height15),
                          physics: const ClampingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: (1 / 1.25),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            var data = modal.favList![index];
                            return FavoriteDetailsView(
                              favorite: data,
                            );
                          },
                        ),
                      ),
                    ],
                  ))
                ],
              );
            })),
          ),
          CustomPaint(
            painter: AppBarPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}
