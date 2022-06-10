import 'package:flutter/material.dart';

import 'package:final_capstone/utils/constants/strings_constant.dart';
import 'package:final_capstone/widgets/mulish_text_font.dart';

class FooterButtons extends StatelessWidget {
  const FooterButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MulishText(
          text: impressum,
          fontSize: 14,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.08),
        const MulishText(
          text: datenschutz,
          fontSize: 14,
        ),
      ],
    );
  }
}

