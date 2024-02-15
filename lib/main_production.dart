import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/routing/app_router.dart';
import 'package:flutter_advanced_complete_project/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  // to fix texts hidden bug in flutter ScreenUtil in release mode
  await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
