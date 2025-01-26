import 'dart:io';

class AddProductItemEntity {
  final String name;
  final num price;
  final String description;
  final String code;
  final File image;
  final bool isFeatured;
  String? imageUrl;

  AddProductItemEntity(
      {required this.name,
      required this.code,
      required this.price,
      required this.description,
      required this.image,
      required this.isFeatured,
      this.imageUrl});
}
