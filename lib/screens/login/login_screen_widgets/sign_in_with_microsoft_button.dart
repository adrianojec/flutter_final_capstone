import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/colors_constant.dart';
import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/widgets/sized_box/horizontal_space.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';

class SignInWithMicrosoftButton extends StatelessWidget {
  const SignInWithMicrosoftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const VerticalSpace(heightPercentage: 15),
        SizedBox(
          width: size.width * 0.75,
          child: Row(
            children: [
              SvgPicture.asset(microsoftIcon),
              const HorizontalSpace(widthPercentage: 2),
              Text(
                signInWithMicrosoft,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Spacer(),
              SvgPicture.asset(doubleForwardArrowIcon),
            ],
          ),
        ),
        const VerticalSpace(heightPercentage: 1.5),
        Container(
          height: 4,
          width: size.width * 0.8,
          color: bottomBorderLineColor,
        ),
      ],
    );
  }
}