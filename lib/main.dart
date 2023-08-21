import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_proof/src/view_model_providers/bottom_vm/bottom_nav_view_model.dart';
import 'package:m_proof/src/view_model_providers/home_vm/home_view_model.dart';
import 'package:provider/provider.dart';

import 'src/helpers/routes/app_routes.dart';
import 'src/helpers/routes/route_name.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomProviderVm()),
        ChangeNotifierProvider(create: (_) => HomeProviderVm()),
      ],
      child: const MyApp(),
    ),
  );
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
