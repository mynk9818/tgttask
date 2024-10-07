import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tgttask/app/modules/first/views/add_book.dart';
import 'package:tgttask/app/modules/second/views/bookreviewcard.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  const SecondView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Collection1"),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
                ],
              ),
            ),
          ),
          const BookReviewCard(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: GestureDetector(
          onTap: () {
            Get.bottomSheet(const AddBookPage(), isScrollControlled: true);
          },
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xff2051E5),
            ),
            child: const Center(
                child: Text(
              "Add Book",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
