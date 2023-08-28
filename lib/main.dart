import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_proof/src/local_cache/preference_utils.dart';
import 'package:m_proof/src/view_model_providers/auth/auth_provider.dart';
import 'package:m_proof/src/view_model_providers/booking_vm/booking_view_model.dart';
import 'package:m_proof/src/view_model_providers/bottom_vm/bottom_nav_view_model.dart';
import 'package:m_proof/src/view_model_providers/favorite_vm/favorite_view_model.dart';
import 'package:m_proof/src/view_model_providers/home_vm/home_view_model.dart';
import 'package:provider/provider.dart';

import 'src/helpers/routes/app_routes.dart';
import 'src/helpers/routes/route_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceUtils.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BottomProviderVm()),
          ChangeNotifierProvider(create: (_) => HomeProviderVm()),
          ChangeNotifierProvider(create: (_) => FavoriteProviderVm()),
          ChangeNotifierProvider(create: (_) => BookingProviderVm()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'M Proof',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: AppRoute.generateRoute,
          initialRoute: RouteName.splashScreen,
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        );
      },
    );
  }
}
