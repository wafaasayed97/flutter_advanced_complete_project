import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/routing/app_router.dart';
import 'package:flutter_advanced_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter ;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
     child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doc App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: ColorsManager.mainBlue,
      ),
      initialRoute: Routes.onBoardingScreen,
      onGenerateRoute: appRouter.generateRoute,
     ),
    );
  }
}
