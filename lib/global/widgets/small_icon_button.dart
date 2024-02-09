import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_size.dart';

class SmallIconButton extends StatelessWidget {
  const SmallIconButton({
    super.key,
    required this.icondata,
  });

  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: AppSize.width(context) * 0.16,
      height: AppSize.height(context) * 0.07,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: AppColors.greyBorderColor, width: 1.4),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Icon(
        icondata,
        color: AppColors.blackColor,
        size: 30,
      ),
    );
  }
}
