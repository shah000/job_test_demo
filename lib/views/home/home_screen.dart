import 'package:flutter/material.dart';
import 'package:job_test/global/utils/app_colors.dart';
import 'package:job_test/global/utils/app_images.dart';
import 'package:job_test/global/utils/app_labels.dart';
import 'package:job_test/global/utils/app_size.dart';
import 'package:job_test/global/widgets/custom_appbar.dart';
import 'package:job_test/views/home/widget/categories_widget.dart';

import 'widget/products_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedCategory = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(
                  title: AppLabels.porducts,
                  isHomeScreen: true,
                ),
                SizedBox(
                  height: AppSize.height(context) * 0.02,
                ),
                const Text(
                  AppLabels.categories,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textProductColor,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: AppSize.height(context) * 0.02,
                ),
                SizedBox(
                  height: AppSize.height(context) * 0.22,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = 0;
                          });
                        },
                        child: CategoriesWidget(
                          image: AppImages.show,
                          name: 'Show all',
                          isSvgImage: true,
                          color: AppColors.cateSelectedColor,
                          selectedColor: selectedCategory == 0
                              ? AppColors.cateSelectedColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width(context) * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = 1;
                          });
                        },
                        child: CategoriesWidget(
                          image: AppImages.cat1png,
                          name: 'category 1',
                          color: AppColors.whiteColor,
                          selectedColor: selectedCategory == 1
                              ? AppColors.cateSelectedColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width(context) * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = 2;
                          });
                        },
                        child: CategoriesWidget(
                          image: AppImages.cat2,
                          name: 'category 2',
                          color: AppColors.whiteColor,
                          selectedColor: selectedCategory == 2
                              ? AppColors.cateSelectedColor
                              : AppColors.whiteColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCategory = 3;
                          });
                        },
                        child: CategoriesWidget(
                          image: AppImages.cat3,
                          name: 'category 3',
                          color: AppColors.whiteColor,
                          selectedColor: selectedCategory == 3
                              ? AppColors.cateSelectedColor
                              : AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.height(context) * 0.02,
                ),
                const ProductsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
