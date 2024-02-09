import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_test/global/utils/app_labels.dart';
import 'package:job_test/global/utils/app_size.dart';
import '../../../global/utils/app_colors.dart';
import '../../../global/utils/app_images.dart';
import 'product_widget_horizontal.dart';
import 'products_widget_vertical.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({
    super.key,
  });

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  bool isHorizontalView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(AppImages.horizontalDisplay),
            SizedBox(
              width: AppSize.width(context) * 0.04,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isHorizontalView = !isHorizontalView;
                });
              },
              child: Text(
                isHorizontalView == true
                    ? AppLabels.displayVertical
                    : AppLabels.displayHorizontal,
                style: const TextStyle(color: AppColors.redColor, fontSize: 12),
              ),
            )
          ],
        ),
        Wrap(
          children: [
            isHorizontalView
                ? const Wrap(
                    children: [
                      ProductWidgetHorizontal(image: AppImages.product1),
                      ProductWidgetHorizontal(image: AppImages.product2),
                      ProductWidgetHorizontal(image: AppImages.product3),
                      ProductWidgetHorizontal(image: AppImages.product4),
                    ],
                  )
                : const Column(
                    children: [
                      ProductsWidgetVertical(
                        image: AppImages.product1,
                      ),
                      ProductsWidgetVertical(
                        image: AppImages.product2,
                      ),
                      ProductsWidgetVertical(
                        image: AppImages.product3,
                      ),
                      ProductsWidgetVertical(
                        image: AppImages.product4,
                      ),
                    ],
                  ),
          ],
        ),
      ],
    );
  }
}
