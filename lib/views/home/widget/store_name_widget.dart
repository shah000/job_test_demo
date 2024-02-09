import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';
import '../../../global/utils/app_size.dart';

class StoreNameWidget extends StatelessWidget {
  const StoreNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: AppSize.width(context) * 0.22,
      height: AppSize.height(context) * 0.04,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 240, 240, 240),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Text(
        "Store name",
        style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 10,
            color: AppColors.greyColor),
      ),
    );
  }
}
