import 'dart:io';

import 'package:flutter/material.dart';

import '../../../global/utils/app_colors.dart';
import '../../../global/utils/app_size.dart';

class ProductPictureCard extends StatelessWidget {
  const ProductPictureCard({
    super.key,
    this.file,
    this.onRemoveFile,
  });

  final Function()? onRemoveFile;
  final File? file;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
      child: Stack(
        children: [
          Container(
            width: AppSize.width(context) * 0.26,
            height: AppSize.height(context) * 0.12,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.greyBorderColor,
                  width: 1,
                )),
            child: file == null
                ? const SizedBox()
                : Stack(
                    children: [
                      Image.file(
                        file!,
                        fit: BoxFit.fill,
                      ),
                      InkWell(
                        onTap: () {
                          onRemoveFile!();
                        },
                        child: CircleAvatar(
                          backgroundColor: AppColors.redColor.withOpacity(0.6),
                          radius: 12,
                          child: const Icon(
                            Icons.close,
                            size: 14,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
