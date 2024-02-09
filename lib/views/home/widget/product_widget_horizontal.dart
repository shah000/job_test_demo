import 'package:flutter/material.dart';

import '../../../global/utils/app_size.dart';
import 'price_widget.dart';
import 'product_name_widget.dart';
import 'store_name_widget.dart';

class ProductWidgetHorizontal extends StatelessWidget {
  const ProductWidgetHorizontal({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: AppSize.width(context) * 0.40,
        height: AppSize.height(context) * 0.36,
        decoration: const BoxDecoration(
            // color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: AppSize.height(context) * 0.01,
              ),
              const ProductNameWidget(),
              SizedBox(
                height: AppSize.height(context) * 0.01,
              ),
              const PriceWidget(),
              SizedBox(
                height: AppSize.height(context) * 0.01,
              ),
              const StoreNameWidget()
            ],
          ),
        ),
      ),
    );
  }
}
