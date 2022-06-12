import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/utilities/constants/icons_constant.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/roboto_text_headline_two.dart';
import 'package:final_capstone/widgets/buttons/custom_button.dart';

class BerichtWidget extends StatelessWidget {
  const BerichtWidget({
    Key? key,
    required this.title,
    required this.dates,
    required this.buttonText,
  }) : super(key: key);

  final String title;
  final String dates;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RobotoTextHeadlineTwo(
          text: title,
          fontSize: 22,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(calendarIcon),
            ),
            const HorizontalSpace(widthPercentage: 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(heightPercentage: 2),
                RobotoTextHeadlineTwo(
                  text: dates,
                  fontSize: 16,
                ),
                const VerticalSpace(heightPercentage: 2),
                CustomButton(
                  buttonText: buttonText,
                  iconName: paperPlaneIconWhiteColor,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
