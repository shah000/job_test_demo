import 'package:flutter/material.dart';
import 'package:job_test/global/widgets/navigator.dart';
import 'package:job_test/views/add_product/add_product.dart';

import '../utils/app_colors.dart';
import 'small_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.isHomeScreen = true,
    required this.title,
  });

  final bool isHomeScreen;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isHomeScreen
              ? InkWell(
                  onTap: () {
                    navigateTo(const AddProduct());
                  },
                  child: const SmallIconButton(
                    icondata: Icons.add,
                  ),
                )
              : const SizedBox(),
          const Spacer(),
          isHomeScreen == false ? const Spacer() : const SizedBox(),
          isHomeScreen == false ? const Spacer() : const SizedBox(),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: AppColors.textProductColor,
                fontStyle: FontStyle.italic),
          ),
          const Spacer(),
          const Spacer(),
          isHomeScreen == false
              ? InkWell(
                  onTap: () {
                    navigateBack();
                  },
                  child: const SmallIconButton(
                    icondata: Icons.arrow_forward_ios,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
