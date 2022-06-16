import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:final_capstone/data/date_and_time_data.dart';
import 'package:final_capstone/screens/add_time_tracking/add_time_tracking_screen.dart';
import 'package:final_capstone/utilities/constants/constants.dart';
import 'package:final_capstone/widgets/buttons/buttons.dart';
import 'package:final_capstone/widgets/container/container.dart';
import 'package:final_capstone/widgets/sized_box/sized_box.dart';
import 'package:final_capstone/widgets/text/text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 5.0,
            right: 5.0,
          ),
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(menuIcon),
          ),
        ),
        Column(
          children: [
            const RobotoTextHeadlineTwo(
              text: donnerstag,
              fontSize: 22,
            ),
            Row(
              children: [
                const ClippedContainer(text: offen),
                RobotoTextBodyOne(text: currentDate),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
          ),
          child: CustomIconButton(
            iconName: calendarIconDotted,
            onPressed: () {},
          ),
        ),
        const HorizontalSpace(widthPercentage: 3),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: lightGreyTextColor,
          ),
          child: CustomIconButton(
            iconName: addIconBlackColor,
            onPressed: () => Navigator.of(context).pushNamed(AddTimeTrackingScreen.routeName),
          ),
        ),
      ],
    );
  }
}

