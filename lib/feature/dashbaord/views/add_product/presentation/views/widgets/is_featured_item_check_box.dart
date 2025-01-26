import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_text_styles.dart';
import 'custom_check_box.dart';

class IsFeaturedCheckBox extends StatefulWidget {
  const IsFeaturedCheckBox({super.key, this.onChanged});

  final ValueChanged<bool>? onChanged;
  @override
  State<IsFeaturedCheckBox> createState() => _IsFeaturedCheckBoxState();
}

class _IsFeaturedCheckBoxState extends State<IsFeaturedCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Is it a featured item?',
                  style: TextStyles.semiBold13
                      .copyWith(color: const Color(0xFF949D9E)),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        CustomCheckBox(
          onChanged: (value) {
            isTermsAccepted = value;
            widget.onChanged!(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
      ],
    );
  }
}
