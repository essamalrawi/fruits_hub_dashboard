import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_field.dart';
import 'package:fruits_hub_dashboard/feature/dashbaord/views/add_product/domain/entities/add_product_entity.dart';
import 'package:fruits_hub_dashboard/feature/dashbaord/views/add_product/presentation/views/widgets/is_featured_item_check_box.dart';

import 'image_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  late String name, code, description;
  late num price;
  File? image;
  bool isFeatured = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
            key: _globalKey,
            autovalidateMode: _autovalidateMode,
            child: Column(
              children: [
                CustomTextFormField(
                  onSaved: (value) {
                    name = value!;
                  },
                  hintText: 'Product Name',
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    price = num.parse(value!);
                  },
                  hintText: 'Product Price',
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    code = value!.toLowerCase();
                  },
                  hintText: 'Product Code',
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    description = value!;
                  },
                  maxLines: 5,
                  hintText: 'Product Description',
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 16,
                ),
                IsFeaturedCheckBox(onChanged: (value) {
                  isFeatured = value;
                }),
                SizedBox(
                  height: 16,
                ),
                ImageField(
                  onFileChanged: (image) {
                    this.image = image;
                  },
                ),
                SizedBox(height: 16),
                CustomButton(
                    onPressed: () {
                      if (image != null) {
                        if (_globalKey.currentState!.validate()) {
                          _globalKey.currentState!.save();
                          AddProductItemEntity addProductItemEntity =
                              AddProductItemEntity(
                            name: name,
                            code: code,
                            description: description,
                            price: price,
                            image: image!,
                            isFeatured: isFeatured,
                          );
                        }
                      } else {
                        showError(context);
                      }
                    },
                    text: 'Add Product')
              ],
            )),
      ),
    );
  }

  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please select an image'),
      ),
    );
  }
}
