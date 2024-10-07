import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tgttask/app/data/Model/bookmodel.dart';
import 'package:tgttask/app/data/storage_service.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  StorageService.init();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
