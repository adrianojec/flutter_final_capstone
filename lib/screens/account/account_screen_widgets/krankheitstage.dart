import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/custom_button.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';

class Krankheitstage extends StatelessWidget {
  const Krankheitstage({
    Key? key,
    required this.sickLeave,
  }) : super(key: key);

  final int sickLeave;

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RobotoTextHeadlineTwo(
            text: krankheitstage,
            fontSize: 22,
          ),
          const VerticalSpace(heightPercentage: 2),
          Row(
            children: [
              const RobotoTextBodyOne(
                text: insgesamt,
                textColor: blackTextColor,
              ),
              const Spacer(),
              RobotoTextHeadlineTwo(
                text: sickLeave.toString(),
                fontSize: 16,
              ),
              const HorizontalSpace(widthPercentage: 2),
            ],
          ),
          const VerticalSpace(heightPercentage: 1.5),
          Row(
            children: [
              Column(
                children: [
                  CustomButton(
                    buttonText: krankheitEinreichen,
                    iconName: addIconWhiteColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
