import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Your Rating: ${controller.rating.value}',
                    style: TextStyle(fontSize: 20),
                  )),
              Obx(() => Text(
                    'Your Comment: ${controller.comment.value}',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                child: Text('Rating Dialog'),
                onPressed: () {
                  controller.showRatingDialog();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
