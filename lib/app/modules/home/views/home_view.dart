import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tgttask/app/modules/home/views/collectondata.dart';
import 'package:tgttask/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final bookCategories = controller.books.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Good Morning'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bookCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(Routes.SECOND);
            },
            child: CollectionCard(
                collectionTitle: bookCategories[index],
                date: " June 6, 2022",
                bookCount: " ${bookCategories[index].length} book"),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: GestureDetector(
          onTap: () {
            Get.toNamed(Routes.FIRST);
          },
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff2051E5),
            ),
            child: const Center(
                child: Text(
              "Create a new collection",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
