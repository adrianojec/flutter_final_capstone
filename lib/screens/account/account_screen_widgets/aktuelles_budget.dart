import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/text/roboto_text_body_one.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';


class AktuellesBudget extends StatelessWidget {
  const AktuellesBudget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: lightGreyTextColor,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 25.0,
      ),
      child: Row(
        children: [
          const RobotoTextBodyOne(
            text: aktuellesBudget,
            textColor: blackTextColor,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(15.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: yellowButtonColor,
            ),
            child: const RobotoTextHeadlineTwo(
              text: '7',
              fontSize: 16,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

