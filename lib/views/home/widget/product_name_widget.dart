import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';

class ProductNameWidget extends StatelessWidget {
  const ProductNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "this is example",
      style: TextStyle(
          fontSize: 17,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w500,
          color: AppColors.blackColor),
    );
  }
}
