import 'package:flutter/services.dart';
import 'package:job_test/global/utils/app_colors.dart';

class BackgroundServices {
  static void setBackground(
      {Color color = AppColors.backgroundColor,
      Brightness brightness = Brightness.dark}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: color,
          statusBarIconBrightness: brightness,
          systemNavigationBarColor: AppColors.backgroundColor,
          systemNavigationBarIconBrightness: Brightness.dark),
    );
  }
}
