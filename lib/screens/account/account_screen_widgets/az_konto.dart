import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/container/custom_container.dart';
import 'package:final_capstone/widgets/sized_box/vertical_space.dart';
import 'package:final_capstone/widgets/text/text.dart';

class AzKonto extends StatelessWidget {
  const AzKonto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const RobotoTextHeadlineTwo(
            text: azKonto,
            fontSize: 22,
          ),
          const VerticalSpace(heightPercentage: 2),
          Row(
            children: const [
              RobotoTextBodyOne(
                text: stunden,
                textColor: blackTextColor,
              ),
              Spacer(),
              RobotoTextHeadlineTwo(
                text: '100 / 250',
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

