import 'package:m_proof/src/screen/bottom_nav_bar/favorite/components/favorite_details_view.dart';
import 'package:m_proof/src/view_model_providers/favorite_vm/favorite_view_model.dart';
import 'package:provider/provider.dart';
import '../../../core_utils/export_dependency.dart';
import '../../../network/api_response/api_response.dart';
import '../../../widget/no_internet.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  late FavoriteProviderVm favoriteProviderVm;

  @override
  void initState() {
    super.initState();
    favoriteProviderVm =
        Provider.of<FavoriteProviderVm>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      favoriteProviderVm.fetchFavoritesApi();
      favoriteProviderVm.fetchFavoritesDoctorApi();
      favoriteProviderVm.fetchFavoritesBarberApi();
      favoriteProviderVm.fetchFavoritesArtistApi();
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
            child: Scaffold(
                body: Column(
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
                    Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
                      switch (modal.favoriteList.statusEnum) {
                        case StatusEnum.loading:
                          return SizedBox(
                            height: AppDimens.height500,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                              strokeWidth: 3,
                            )),
                          );
                        case StatusEnum.error:
                          return Center(
                            child: Text(modal.favoriteList.message.toString()),
                          );
                        case StatusEnum.internet:
                          return const NoInternet();
                        case StatusEnum.completed:
                          return SizedBox(
                            child: modal.favoriteList.data!.data!.isNotEmpty
                                ? GridView.builder(
                                    itemCount:
                                        modal.favoriteList.data!.data!.length,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var data =
                                          modal.favoriteList.data!.data![index];
                                      return FavoriteDetailsView(
                                        favorite: data,
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                    "No Data found",
                                    style: AppStyle.appBarTitleTextStyle
                                        .copyWith(color: AppColors.blackColor),
                                  )),
                          );
                        case null:
                          return Expanded(
                              child: ListView(
                            padding: EdgeInsets.only(top: AppDimens.height200),
                            children: [
                              Center(
                                  child: Text(
                                "No Data found",
                                style: AppStyle.appBarTitleTextStyle,
                              )),
                            ],
                          ));
                      }
                    }),
                    Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
                      switch (modal.favoriteDoctorList.statusEnum) {
                        case StatusEnum.loading:
                          return SizedBox(
                            height: AppDimens.height500,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                              strokeWidth: 3,
                            )),
                          );
                        case StatusEnum.error:
                          return Center(
                            child: Text(
                                modal.favoriteDoctorList.message.toString()),
                          );
                        case StatusEnum.internet:
                          return const NoInternet();
                        case StatusEnum.completed:
                          return SizedBox(
                            child: modal
                                    .favoriteDoctorList.data!.data!.isNotEmpty
                                ? GridView.builder(
                                    itemCount: modal
                                        .favoriteDoctorList.data!.data!.length,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var data = modal.favoriteDoctorList.data!
                                          .data![index];
                                      return FavoriteDetailsView(
                                        favorite: data,
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                    "No Data found",
                                    style: AppStyle.appBarTitleTextStyle
                                        .copyWith(color: AppColors.blackColor),
                                  )),
                          );
                        case null:
                          return Expanded(
                              child: ListView(
                            padding: EdgeInsets.only(top: AppDimens.height200),
                            children: [
                              Center(
                                  child: Text(
                                "No Data found",
                                style: AppStyle.appBarTitleTextStyle,
                              )),
                            ],
                          ));
                      }
                    }),
                    Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
                      switch (modal.favoriteBarberList.statusEnum) {
                        case StatusEnum.loading:
                          return SizedBox(
                            height: AppDimens.height500,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                              strokeWidth: 3,
                            )),
                          );
                        case StatusEnum.error:
                          return Center(
                            child: Text(
                                modal.favoriteBarberList.message.toString()),
                          );
                        case StatusEnum.internet:
                          return const NoInternet();
                        case StatusEnum.completed:
                          return SizedBox(
                            child: modal
                                    .favoriteBarberList.data!.data!.isNotEmpty
                                ? GridView.builder(
                                    itemCount: modal
                                        .favoriteBarberList.data!.data!.length,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var data = modal.favoriteBarberList.data!
                                          .data![index];
                                      return FavoriteDetailsView(
                                        favorite: data,
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                    "No Data found",
                                    style: AppStyle.appBarTitleTextStyle
                                        .copyWith(color: AppColors.blackColor),
                                  )),
                          );
                        case null:
                          return Expanded(
                              child: ListView(
                            padding: EdgeInsets.only(top: AppDimens.height200),
                            children: [
                              Center(
                                  child: Text(
                                "No Data found",
                                style: AppStyle.appBarTitleTextStyle,
                              )),
                            ],
                          ));
                      }
                    }),
                    Consumer<FavoriteProviderVm>(builder: (context, modal, _) {
                      switch (modal.favoriteArtistList.statusEnum) {
                        case StatusEnum.loading:
                          return SizedBox(
                            height: AppDimens.height500,
                            child: Center(
                                child: CircularProgressIndicator(
                              color: AppColors.primaryColor,
                              strokeWidth: 3,
                            )),
                          );
                        case StatusEnum.error:
                          return Center(
                            child: Text(
                                modal.favoriteArtistList.message.toString()),
                          );
                        case StatusEnum.internet:
                          return const NoInternet();
                        case StatusEnum.completed:
                          return SizedBox(
                            child: modal
                                    .favoriteArtistList.data!.data!.isNotEmpty
                                ? GridView.builder(
                                    itemCount: modal
                                        .favoriteArtistList.data!.data!.length,
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
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var data = modal.favoriteArtistList.data!
                                          .data![index];
                                      return FavoriteDetailsView(
                                        favorite: data,
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text(
                                    "No Data found",
                                    style: AppStyle.appBarTitleTextStyle
                                        .copyWith(color: AppColors.blackColor),
                                  )),
                          );
                        case null:
                          return Expanded(
                              child: ListView(
                            padding: EdgeInsets.only(top: AppDimens.height200),
                            children: [
                              Center(
                                  child: Text(
                                "No Data found",
                                style: AppStyle.appBarTitleTextStyle,
                              )),
                            ],
                          ));
                      }
                    }),
                  ],
                ))
              ],
            )),
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
