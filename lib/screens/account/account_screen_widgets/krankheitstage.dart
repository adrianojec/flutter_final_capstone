import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/custom_button.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class Krankheitstage extends StatelessWidget {
  const Krankheitstage({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RobotoTextHeadlineTwo(
            text: krankheitstage,
            fontSize: 22,
          ),
          const VerticalSpace(heightPercentage: 2),
          Row(
            children: [
              RobotoTextBodyOne(
                text: insgesamt,
                textColor: blackTextColor,
              ),
              const Spacer(),
              RobotoTextHeadlineTwo(
                text: '03',
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
                    onPressed: (){},
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

