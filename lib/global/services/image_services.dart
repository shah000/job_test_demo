import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageService {
  final _picker = ImagePicker();

  Future<File?> getImageFromGallery() async {
    final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery, requestFullMetadata: true);
    if (pickedFile != null) {
      return File(pickedFile.path);
      //
    } else {
      return null;
    }
  }

  Future<File?> getImageFromCamera() async {
    final pickedFile = await _picker.pickImage(
        source: ImageSource.camera, requestFullMetadata: true);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      return null;
    }
  }
}
