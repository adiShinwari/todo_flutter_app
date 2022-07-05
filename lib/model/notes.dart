import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class Data {
  String title;
  String description;
  XFile image;

  Data({
    required this.title,
    required this.description,
    required this.image,
  });
}
