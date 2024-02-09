import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: AppColors.whiteColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.greyBorderColor),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1.4, color: AppColors.greyBorderColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 1.4, color: AppColors.greyBorderColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          border: const OutlineInputBorder()),
    );
  }
}
