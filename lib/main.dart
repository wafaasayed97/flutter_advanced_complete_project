import 'package:flutter/material.dart';
import 'package:flutter_advanced_complete_project/core/routing/app_router.dart';
import 'package:flutter_advanced_complete_project/doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}