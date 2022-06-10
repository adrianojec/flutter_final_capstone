import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utils/constants/colors_constant.dart';
import 'package:final_capstone/utils/constants/strings_constant.dart';

class SignInWithMicrosoftButton extends StatelessWidget {
  const SignInWithMicrosoftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height * 0.15),
        SizedBox(
          width: size.width * 0.75,
          child: Row(
            children: [
              SvgPicture.asset('$iconPath/microsoft.svg'),
              SizedBox(width: size.width * 0.02),
              Text(
                signInWithMicrosoft,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const Spacer(),
              SvgPicture.asset('$iconPath/double_arrow.svg'),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.015),
        Container(
          height: 4,
          width: size.width * 0.8,
          color: bottomBorderLineColor,
        ),
      ],
    );
  }
}

