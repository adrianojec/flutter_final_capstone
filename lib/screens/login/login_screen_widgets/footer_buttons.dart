import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/text/mulish_text_font.dart';
import 'package:final_capstone/widgets/sized_box/horizontal_space.dart';

class FooterButtons extends StatelessWidget {
  const FooterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        MulishText(
          text: impressum,
          fontSize: 14,
        ),
        HorizontalSpace(widthPercentage: 8),
        MulishText(
          text: datenschutz,
          fontSize: 14,
        ),
      ],
    );
  }
}
