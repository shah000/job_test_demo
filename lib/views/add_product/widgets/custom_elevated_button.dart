import 'package:flutter/material.dart';
import 'package:job_test/global/utils/app_size.dart';

import '../../../global/utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.data,
    required this.onTap,
  });

  final Widget data;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.cateSelectedColor,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            fixedSize:
                Size(AppSize.width(context), AppSize.height(context) * 0.06)),
        onPressed: () {
          onTap();
        },
        child: data);
  }
}
