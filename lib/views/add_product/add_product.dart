import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_test/global/services/image_services.dart';
import 'package:job_test/global/utils/app_colors.dart';
import 'package:job_test/global/utils/app_images.dart';

import '../../global/utils/app_labels.dart';
import '../../global/utils/app_size.dart';
import '../../global/widgets/custom_appbar.dart';
import 'widgets/custom_elevated_button.dart';
import 'widgets/custom_text_filed.dart';
import 'widgets/product_picture_card.dart';
import 'widgets/text_filed_title.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

List<File> images = [];
List<String> _categoryItems = [
  'show all',
  'category 1',
  'category 2',
  'category 3'
];
String? _catType;

class _AddProductState extends State<AddProduct> {
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
              title: AppLabels.addPorducts,
              isHomeScreen: false,
            ),
            SizedBox(
              height: AppSize.height(context) * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFieldTitle(
                    title: AppLabels.productPictures,
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  SizedBox(
                      width: AppSize.width(context),
                      height: AppSize.height(context) * 0.14,
                      child: ListView.builder(
                          itemCount: images.isEmpty ? 4 : images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return images.isEmpty
                                ? const ProductPictureCard()
                                : ProductPictureCard(
                                    onRemoveFile: () {
                                      setState(() {
                                        images.removeAt(index);
                                      });
                                    },
                                    file: images[index],
                                  );
                          })),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  CustomElevatedButton(
                    data: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.addIcon),
                        SizedBox(
                          width: AppSize.width(context) * 0.04,
                        ),
                        const Text(
                          AppLabels.pressAddPicture,
                          style: TextStyle(
                              color: AppColors.whiteColor, fontSize: 14),
                        )
                      ],
                    ),
                    onTap: () async {
                      await ImageService()
                          .getImageFromGallery()
                          .then((value) => {
                                setState(() {
                                  images.add(value!);
                                })
                              });
                    },
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.02,
                  ),
                  const TextFieldTitle(
                    title: "product name",
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  const CustomTextFiled(
                    hintText: 'product name',
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  const TextFieldTitle(
                    title: AppLabels.storeName,
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  const CustomTextFiled(
                    hintText: AppLabels.storeName,
                  ),
                  const TextFieldTitle(
                    title: AppLabels.price,
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  const CustomTextFiled(
                    hintText: AppLabels.price,
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  const TextFieldTitle(
                    title: AppLabels.category,
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.01,
                  ),
                  Container(
                    height: AppSize.height(context) * 0.07,
                    width: AppSize.width(context),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        border: Border.all(
                            color: AppColors.greyBorderColor, width: 1.6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton(
                            dropdownColor: Colors.white,
                            style: const TextStyle(color: Colors.black),
                            value: _catType,
                            hint: const Text(
                              AppLabels.categoryName,
                              style:
                                  TextStyle(color: AppColors.categoryHintColor),
                            ),
                            icon: Padding(
                              padding: const EdgeInsets.only(
                                  left: 4.0, top: 4, bottom: 4),
                              child: Container(
                                width: 55,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                child: Image.asset(AppImages.dropDown),
                              ),
                            ),
                            items: _categoryItems.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _catType = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.height(context) * 0.03,
                  ),
                  CustomElevatedButton(
                    data: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: AppSize.width(context) * 0.04,
                        ),
                        Text(
                          AppLabels.addPorducts.toLowerCase(),
                          style: const TextStyle(
                              color: AppColors.whiteColor, fontSize: 16),
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
