import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';
import '../../../global/utils/app_size.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "120",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              color: AppColors.cateSelectedColor),
        ),
        SizedBox(
          width: AppSize.width(context) * 0.03,
        ),
        const Text(
          "SAR",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColors.textProductColor),
        ),
      ],
    );
  }
}
