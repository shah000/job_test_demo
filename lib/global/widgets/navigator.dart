import 'package:flutter/material.dart';
import 'package:get/get.dart';

void navigateBack() {
  Get.back();
}

Future<void> navigateTo(Widget screen) async {
  await Get.to(
    screen,
    transition: Transition.rightToLeftWithFade,
    duration: const Duration(milliseconds: 100),
  );
}

void navigateOff(Widget screen) {
  Get.offAll(screen,
      transition: Transition.rightToLeftWithFade,
      duration: const Duration(microseconds: 100));
}
