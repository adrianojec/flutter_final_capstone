import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/widgets/sized_box/horizontal_space.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.iconName,
  }) : super(key: key);

  final String buttonText;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black,
      onPressed: () {},
      child: Row(
        children: [
          RobotoTextHeadlineTwo(
            text: buttonText,
            fontSize: 14,
            textColor: Colors.white,
          ),
          const HorizontalSpace(widthPercentage: 2),
          SvgPicture.asset(iconName),
        ],
      ),
    );
  }
}

