import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
        children: [
          const VerticalSpace(heightPercentage: 12),
          SvgPicture.asset(appLogo),
          const VerticalSpace(heightPercentage: 8),
          const RobotoTextHeadlineTwo(text: flutterFieldPass, fontSize: 14),
        ],
      );
  }
}