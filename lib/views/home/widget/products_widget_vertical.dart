import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';
import '../../../global/utils/app_size.dart';
import 'price_widget.dart';
import 'product_name_widget.dart';
import 'store_name_widget.dart';

class ProductsWidgetVertical extends StatelessWidget {
  const ProductsWidgetVertical({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Column(
        children: [
          SizedBox(
            height: AppSize.height(context) * 0.02,
          ),
          Container(
            width: AppSize.width(context),
            height: AppSize.height(context) * 0.17,
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: AppSize.height(context),
                    width: AppSize.width(context) * 0.30,
                    decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.width(context) * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppSize.height(context) * 0.02,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
