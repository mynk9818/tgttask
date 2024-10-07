import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/first_controller.dart';

class FirstView extends GetView<FirstController> {
  const FirstView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FirstView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            const SizedBox(
              height: 280,
            ),
            Container(
              child: const Text(" Add your first book"),
            )
          ],
        ));
  }
}
