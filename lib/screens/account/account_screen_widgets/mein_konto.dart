import 'package:flutter/material.dart';

import 'package:final_capstone/utilities/constants/strings_constant.dart';
import 'package:final_capstone/widgets/circle_image.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';
import 'package:final_capstone/freezed_models/user/user.dart';

class MeinKonto extends StatelessWidget {
  const MeinKonto({
    Key? key, required this.user,
  }) : super(key: key);

  final User user;

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
            CircleImage(imageUrl: user.imageUrl),
            const HorizontalSpace(widthPercentage: 2.5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RobotoTextHeadlineTwo(
                  text: '${user.firstName} ${user.lastName}',
                  fontSize: 16,
                ),
                RobotoTextBodyOne(text: user.email),
                const VerticalSpace(heightPercentage: 1.5),
                RobotoTextBodyOne(text: user.position),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
