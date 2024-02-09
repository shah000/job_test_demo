import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_test/global/utils/app_colors.dart';
import 'package:job_test/global/utils/app_size.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
    required this.image,
    required this.name,
    required this.selectedColor,
    required this.color,
    this.isSvgImage = false,
  });

  final Color color;
  final String image;
  final bool isSvgImage;
  final String name;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context) * 0.25,
      height: AppSize.height(context) * 0.18,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(color: selectedColor),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: AppSize.height(context) * 0.11,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: color),
              child: Center(
                child: isSvgImage
                    ? SvgPicture.asset(image)
                    : Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            const Spacer(),
            Center(child: Text(name)),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
