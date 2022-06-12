import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class MeinKonto extends StatelessWidget {
  const MeinKonto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RobotoTextHeadlineTwo(
          text: meinKonto,
          fontSize: 22,
        ),
        const VerticalSpace(heightPercentage: 1),
        Row(
          children: [
            const CircleImage(imageUrl: 'https://www.cheatsheet.com/wp-content/uploads/2019/06/RDJ-Tony-Stark.jpg'),
            const HorizontalSpace(widthPercentage: 2.5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                RobotoTextHeadlineTwo(
                  text: 'Tony Stark',
                  fontSize: 16,
                ),
                RobotoTextBodyOne(text: 'tony_stark@gmail.com'),
                VerticalSpace(heightPercentage: 1.5),
                RobotoTextBodyOne(text: 'Monteur'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
